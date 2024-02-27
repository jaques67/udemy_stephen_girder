import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
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
    );
  }

  Widget emailField() {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@example.com',
        labelText: 'Email Address',
      ),
    );
  }

  Widget passwordField() {
    return const TextField(
      obscureText: false,
      decoration: InputDecoration(
        hintText: 'password',
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    final ButtonStyle style =
        ElevatedButton.styleFrom(backgroundColor: Colors.blue);
    return ElevatedButton(
      onPressed: () {},
      style: style,
      child: const Text('Login'),
    );
  }
}
