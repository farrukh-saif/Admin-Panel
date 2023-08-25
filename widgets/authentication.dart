import 'package:admin_panel/pages/forgot_password.dart';
import 'package:admin_panel/pages/login.dart';
import 'package:admin_panel/pages/sign_up.dart';
import 'package:admin_panel/widgets/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:admin_panel/utils/app_session.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

//Build the page according to value of authState
class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AuthState>(
      valueListenable: AppSession().authState,
      builder: (context, authState, child) {
        switch (authState) {
          case AuthState.loggingIn:
            return const LoginPage();
          case AuthState.forgotPassword:
            return const Scaffold(
              body: Center(
                child: ForgotPasswordPage(),
              ),
            );
          case AuthState.signingUp:
            return const Scaffold(
              body: Center(
                child: SignUpPage(),
              ),
            );
          case AuthState.loggedIn:
            return const Scaffold(
              body: Center(
                child: Skeleton(),
              ),
            );

          default:
            return const LoginPage();
        }
      },
    );
  }
}
