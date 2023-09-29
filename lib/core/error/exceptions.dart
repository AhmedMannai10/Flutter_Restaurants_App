class ServerException implements Exception {
  final String message;

  ServerException({required this.message});
}

class CachException implements Exception {}
