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
  get changeEmail => emailController.sink.add;
  get changePassword => passwordController.sink.add;

  // Retrieve data from a stream
  get email => emailController.stream;
  get password => passwordController.stream;
}
