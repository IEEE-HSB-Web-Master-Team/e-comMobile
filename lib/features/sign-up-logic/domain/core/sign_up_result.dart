sealed class SignUpResult<T> {}

class Success<T> extends SignUpResult<T> {
  final T? data;

  Success(this.data);
}

class Failure<T> extends SignUpResult<T> {
  final Exception? exception;

  Failure({this.exception});
}


