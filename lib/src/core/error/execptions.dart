
//clase para manejar lo erroes que se presentenes, ya sea por peticion http o en cache
class ServerExceptions implements Exception {
  final String? message;
  final String? stattusCode;

  ServerExceptions({
    this.message,
    this.stattusCode,
  });
}

class CacheExceptions implements Exception {}
