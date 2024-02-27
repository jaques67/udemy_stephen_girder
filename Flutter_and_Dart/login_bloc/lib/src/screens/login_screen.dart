import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
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
    return StreamBuilder<String>(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail, // no parentheses, reference to it
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'you@example.com',
              labelText: 'Email Address',
              errorText: snapshot.hasError ? snapshot.error.toString() : null,
            ),
          );
        });
  }

  Widget passwordField() {
    return StreamBuilder<String>(
        stream: null,
        builder: (context, snapshot) {
          return const TextField(
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'password',
              labelText: 'Password',
            ),
          );
        });
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
