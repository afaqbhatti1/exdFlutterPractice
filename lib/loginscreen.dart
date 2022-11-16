import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  LoginApp({super.key});
  final Formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Validation"),
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: Formkey,
            child: Column(children: [
              TextFormField(
                controller: emailController,
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  label: Text("E-mail"),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordcontroller,
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  label: Text("Password"),
                ),
                validator: (value) {
                  RegExp regex = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  } else {
                    if (!regex.hasMatch(value)) {
                      return 'Enter valid password';
                    } else {
                      return null;
                    }
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (Formkey.currentState!.validate()) {
                      print("Fields Valid");
                    } else {
                      print("fields is not Valid");
                    }
                  },
                  child: Text("Login")),
            ]),
          )),
    );
  }
}
