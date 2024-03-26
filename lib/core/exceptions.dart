class CacheException implements Exception {}

class ApiException implements Exception {
  final String message;

  ApiException([this.message = ""]);
  @override
  String toString() {
    final Object message = this.message;
    return "$message";
  }
}

class BadNetworkException implements Exception {}

class InternalServerException implements Exception {}

class UnauthenticatedException implements Exception {}

class ApiErrorMessageException implements Exception {
  final String? errorMessage;

  ApiErrorMessageException({required this.errorMessage});
}
