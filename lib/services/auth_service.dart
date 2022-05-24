import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthService{
  ProviderRef? _ref;
  FirebaseAuth? firebaseAuth;
  AuthService({ProviderRef? ref}){
    _ref = ref;
  }
  
  faceBookLogin() async {
    // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    // User? user =  firebaseAuth.currentUser;
    // firebaseAuth.currentUser;
    try{
      FacebookAuth result =  FacebookAuth.instance;
      // FacebookPermissions? facebookPermissions = await result.permissions;
      var login = await result.login();

      if(login.status == 'success'){

      }else{
        print(login.status.toString());
      }
    }catch(e){
      print(e.toString());
    }
    // firebaseAuth.signInWith
  }
}