import 'package:flutter/material.dart';
import 'package:form_v2/Components/registration_form.dart';

class HomePage  extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: const RegistrationForm(),
    );
  }
}

