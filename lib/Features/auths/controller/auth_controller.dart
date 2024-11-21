import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/Features/auths/repository/auth_repository.dart';
import 'package:reddit_clone/utils.dart';

final authControllerProvider = Provider(
  (ref) => AuthController(
    auth_repository: ref.read(
      authRepositoryProvider,
    ),
  ),
);

class AuthController {
  final AuthRepository _authRepository;

  AuthController({required AuthRepository auth_repository})
      : _authRepository = auth_repository;

  void signInWithGoogle(BuildContext context) async {
    final user = await _authRepository.signInWithGoogle();
    user.fold((l) => showSnackBar(context,l.message), (r) => null,);
  }
}
