import 'package:admin_panel/utils/app_session.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Panel"),
        backgroundColor: Colors.black45,
      ),
      body: Center(
        child: Card(
          elevation: 20,
          child: SizedBox(
            height: 300,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Forgot Password?"),
                  const SizedBox(height: 37),
                  //Smaller text that says "Enter your email below to reset your password"
                  const Text(
                    "Enter your email below to reset your password",
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                  const SizedBox(height: 40),
                  //Email
                  TextFormField(
                    onFieldSubmitted: (_) {},
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        AppSession().authState.value = AuthState.loggedIn;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black45),
                    ),
                    child: const SizedBox(
                        width: 270,
                        height: 50,
                        child: Center(child: Text("Submit"))),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              AppSession().authState.value =
                                  AuthState.loggingIn;
                            });
                          },
                          style: ButtonStyle(
                              overlayColor: MaterialStatePropertyAll(
                                  Colors.black.withOpacity(0.1))),
                          child: const Text(
                            "Back to Login",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
