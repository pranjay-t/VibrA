import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/Features/auths/controller/auth_controller.dart';
import 'package:reddit_clone/core/constants/constants.dart';

class SignInButtons extends ConsumerWidget {
  const SignInButtons({super.key});

  void signInWithGoogle(BuildContext context,WidgetRef ref){
    ref.read(authControllerProvider).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return ElevatedButton(
                onPressed: () => signInWithGoogle(context,ref),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Constants.googlePath,
                        height: 40,
                      ),
                      const Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ));
  }
}