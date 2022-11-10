import 'package:demo/users/landingpage.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FocusNode passwordNode = FocusNode(
    debugLabel: 'password',
  );

  late final TextEditingController usernameController;
  late final TextEditingController passwordController;

  var errorMessage = '';

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Image.asset('assets/unsika.png',
                    fit: BoxFit.cover, height: 100),
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    hintText: 'Username',
                  ),
                  keyboardType: TextInputType.name,
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (value) {
                    FocusScope.of(context).requestFocus(passwordNode);
                  },
                  validator: (value) {
                    if (value!.length < 3) {
                      return 'Username must be at least 3 characters';
                    }

                    if (value.length > 20) {
                      return 'Username must be at most 20 characters';
                    }

                    return null;
                  },
                ),
                TextFormField(
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  focusNode: passwordNode,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                  // obscureText: true,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Register'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return LandingPage();
                            },
                          ),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Text(errorMessage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
