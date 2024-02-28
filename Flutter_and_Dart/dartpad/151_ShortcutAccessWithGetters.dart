import 'dart:async';

void main() {
  final bloc = new Bloc();

  bloc.email.listen((value) {
    print(value);
  });

  bloc.changeEmail('My new email');
}

class Bloc {
  final emailController = StreamController<String>();
  final passwordController = StreamController<String>();

  // Add data to a stream
  Function(String) get changeEmail => emailController.sink.add;
  Function(String) get changePassword => passwordController.sink.add;

  // Retrieve data from a stream
  Stream<String> get email => emailController.stream;
  Stream<String> get password => passwordController.stream;
}
