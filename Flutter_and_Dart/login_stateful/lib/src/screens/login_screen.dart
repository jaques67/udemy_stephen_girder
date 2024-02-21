import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(
              margin: const EdgeInsets.only(top: 25.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      validator: (String? value) {
        return (value != null && !value.contains('@'))
            ? 'Please enter valid email'
            : null;
      },
      onSaved: (String? value) {
        print(value);
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: false, // set to true to obscure the password field
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: (String? value) {
        return (value != null && value.length < 4)
            ? 'Password must be at least 4 characters.'
            : null;
      },
      onSaved: (String? value) {
        print(value);
      },
    );
  }

  Widget submitButton() {
    final ButtonStyle style =
        ElevatedButton.styleFrom(backgroundColor: Colors.blue);

    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState?.save();
        }
      },
      style: style,
      child: const Text('Submit!'),
    );
  }
}
