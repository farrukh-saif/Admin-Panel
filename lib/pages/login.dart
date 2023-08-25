import 'package:admin_panel/utils/app_session.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  const Text("Login"),
                  const SizedBox(height: 20),
                  //Username
                  TextFormField(
                    onFieldSubmitted: (_) {},
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                    ),
                  ),
                  const SizedBox(height: 20),
                  //Password
                  TextFormField(
                    obscureText: true,
                    onFieldSubmitted: (_) {},
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        AppSession().authState.value = AuthState.loggedIn;
                        print("Logged In");
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black45),
                    ),
                    child: const SizedBox(
                        width: 270,
                        height: 50,
                        child: Center(child: Text("Login"))),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              AppSession().authState.value =
                                  AuthState.signingUp;
                            });
                          },
                          style: ButtonStyle(
                              overlayColor: MaterialStatePropertyAll(
                                  Colors.black.withOpacity(0.1))),
                          child: const Text(
                            "Don't have an account?",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12),
                          )),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            AppSession().authState.value =
                                AuthState.forgotPassword;
                          });
                        },
                        style: ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(
                                Colors.black.withOpacity(0.1))),
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ),
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
