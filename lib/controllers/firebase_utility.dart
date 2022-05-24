import 'dart:io';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

class FirebaseUtility {
  static void signInWithPhoneAuthCredential(
      {required PhoneAuthCredential phoneAuthCredential,
      required FirebaseAuth auth,
      required BuildContext context,
      required Function() goTo}) async {
    try {
      final authCredential =
          await auth.signInWithCredential(phoneAuthCredential);

      if (authCredential.user != null) {
        goTo();
      }
    } on FirebaseAuthException catch (e) {
      Common.showSnackBar(e.message ?? '', context);
    }
  }

  static verifyPhoneNumber(
      {required Function(String) verifyId,
      required String phoneNo,
      required FirebaseAuth auth,
      required BuildContext context}) {
    auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (phoneAuthCredential) async {},
        verificationFailed: (verificationFailed) async {
          Common.showSnackBar(verificationFailed.message ?? '', context);
        },
        codeSent: (verificationId, resendingToken) async {
          verifyId(verificationId);
        },
        codeAutoRetrievalTimeout: (verificationId) async {});
  }

  static add(
      {required Map<String, dynamic> doc,
      required String collectionPath,}) async {
    await FirebaseFirestore.instance.collection(collectionPath).add(doc);
  }

  static update(
      {required Map<String, dynamic> doc,
      required String collectionPath,
      required String docId}) async {
    await FirebaseFirestore.instance
        .collection(collectionPath)
        .doc(docId)
        .update(doc);
  }

  static delete({required String collectionPath, required String docId}) async {
    await FirebaseFirestore.instance
        .collection(collectionPath)
        .doc(docId)
        .delete();
  }

  static getSnapshots(
      {required String collectionPath, String? query, String? field}) {
    if (query != null && field != null) {
      return FirebaseFirestore.instance
          .collection(collectionPath)
          .where(field, isEqualTo: query)
          .snapshots();
    }
    return FirebaseFirestore.instance.collection(collectionPath).snapshots();
  }

  static Future<String?> uploadFile({required File file}) async {
    if (!file.existsSync()) {
      return null;
    }
    String imageUrl = '';
    String fileName = basename(file.path);
    Reference firebaseStorageRef =
        FirebaseStorage.instance.ref().child(fileName);
    UploadTask uploadTask = firebaseStorageRef.putFile(file);
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
    taskSnapshot.state.toString();
    await firebaseStorageRef.getDownloadURL().then((fileUrl) {
      imageUrl = fileUrl;
    });
    return imageUrl;
  }

  static final _auth = FirebaseAuth.instance;
  static signInWithEmailPassword({required String email, required String password, required BuildContext context}) async
  {
    try {
      var user = _auth.currentUser;
      if (user!.emailVerified) {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
        Common.showSnackBar('User successfully Sign In', context);
        return userCredential.user;
      }
      else
      {
        Common.showSnackBar('Your Email is not verified. Please verify your email', context);
        sendVerificationEmail(email: email, context: context);
      }
    }
    on FirebaseAuthException catch(e)
    {
      if(e.code == 'user-disabled')
      {
        Common.showSnackBar('Given email has been disabled', context);
      }
      else if(e.code == 'wrong-password')
      {
        Common.showSnackBar('Wrong Password', context);
      }
      else if(e.code == 'invalid-email')
      {
        Common.showSnackBar('Invalid Email', context);
      }
      else if(e.code == 'user-not-found')
      {
        Common.showSnackBar('No Account Registered against this email', context);
      }
    }
  }
  static signUpWithEmailPassword({required String email, required String password, required BuildContext context}) async
  {
    try
    {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      Common.showSnackBar('User successfully Sign Up', context);
      sendVerificationEmail(email: email, context: context);
      return userCredential.user;
    }
    on FirebaseAuthException catch(e)
    {
      if(e.code == 'email-already-in-use')
      {
        Common.showSnackBar('Email Already Registered Please Login', context);
      }
      else if(e.code == 'weak-password')
      {
        Common.showSnackBar('Password is too weak', context);
      }
      else if(e.code == 'invalid-email')
      {
        Common.showSnackBar('Invalid Email', context);
      }
      else if(e.code == 'operation-not-allowed')
      {
        Common.showSnackBar('email/password accounts are not enabled', context);
      }
    }
  }

  static sendVerificationEmail({required String? email,required BuildContext context}) async
  {
    var user =  _auth.currentUser;
    if(user != null && user.emailVerified == false)
    {
      await user.sendEmailVerification();
      Common.showSnackBar('A Verification email sent! please check your inbox', context);
    }
  }

  static sendResetPasswordEmail({required String email, required BuildContext context}) async
  {
    try
    {
      await _auth.sendPasswordResetEmail(email: email);
      Common.showSnackBar('Password Reset Email has been sent', context);
    }
    on FirebaseAuthException catch(e)
    {
      if(e.code == 'auth/invalid-email')
      {
        Common.showSnackBar('Invalid Email', context);
      }
      else if(e.code == 'auth/user-not-found')
      {
        Common.showSnackBar('User Not Found', context);
      }

    }
  }
}
