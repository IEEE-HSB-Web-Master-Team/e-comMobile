class AppException implements Exception {
  final String? message;
  final String? details;

  AppException({required this.message, this.details});

  @override
  String toString() {
    return message?? '';
  }
}

class UnauthorizedException extends AppException {
  UnauthorizedException({super.message});
}

class NoInternetException extends AppException {
  NoInternetException({super.message});
}

class ServerError extends AppException {
  ServerError({super.message , super.details});
}
class ConflictException extends AppException {
  ConflictException({super.message});
}
class NotFound extends AppException {
  NotFound({super.message});
}

class UnknownErrorException extends AppException {
  UnknownErrorException({super.message});
}