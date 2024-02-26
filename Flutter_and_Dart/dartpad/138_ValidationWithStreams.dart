// <h4>Enter your email!</h4>
// <input />
// <div style="color: read;"></div>
import 'dart:async';
import 'dart:html';

void main() {
  final InputElement input = querySelector('input') as InputElement;
  final DivElement div = querySelector('div') as DivElement;

  final validateEmail =
      new StreamTransformer.fromHandlers(handleData: (inputValue, sink) {
    if (inputValue.contains('@')) {
      sink.add(inputValue);
    } else {
      sink.addError('Enter a valid email');
    }
  });

  input.onInput
      .map((dynamic event) => event.target.value)
      .transform(validateEmail)
      .transform(validateNotGmailAddress)
      .transform(validateNotBlank)
      .listen((inputValue) => div.innerHtml = '',
          onError: (err) => div.innerHtml = err);
}
