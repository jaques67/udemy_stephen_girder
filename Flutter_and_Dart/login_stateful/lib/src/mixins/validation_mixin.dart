mixin ValidationMixin {
  String? validateEmail(String? value) {
    return (value != null && !value.contains('@'))
        ? 'Please enter valid email'
        : null;
  }

  String? validatePassword(String? value) {
    return (value != null && value.length < 4)
        ? 'Password must be at least 4 characters.'
        : null;
  }
}
