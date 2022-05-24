import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social/services/auth_service.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService(ref: ref));