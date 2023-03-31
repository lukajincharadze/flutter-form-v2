import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool passwordHidden = true;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(10, 10),
            )
          ],
        ),
        child: Form(
          key: formKey,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "field must be filled";
                    }
                  },
                  controller: usernameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    suffixIcon: IconButton(
                        onPressed: () {
                          usernameController.clear();
                        },
                        icon: const Icon(Icons.clear)),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "field must be filled";
                    }
                  },
                  obscureText: passwordHidden,
                  controller: passwordController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordHidden = !passwordHidden;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye)),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(onPressed: () {
                  formKey.currentState!.validate();
                }, child: const Text("Log in")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
