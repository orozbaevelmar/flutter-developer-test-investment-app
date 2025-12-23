import 'package:equatable/equatable.dart';

class LoadBoardException extends Equatable implements Exception {
  final String? message;

  const LoadBoardException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}

class ServerException extends LoadBoardException {
  const ServerException([message]) : super(message ?? "tryAgain");
}

class FetchDataException extends LoadBoardException {
  const FetchDataException([message]) : super(message ?? "tryAgain");
}

class NetworkException extends LoadBoardException {
  const NetworkException([message]) : super(message ?? "tryAgain");
}

class BadRequestException extends LoadBoardException {
  const BadRequestException([message]) : super(message ?? "badRequest");
}

class UnauthorizedException extends LoadBoardException {
  const UnauthorizedException([message]) : super(message ?? "unauthorized");
}

class NotFoundException extends LoadBoardException {
  const NotFoundException([message]) : super(message ?? "requestInfoNotFound");
}

class ConflictException extends LoadBoardException {
  const ConflictException([message]) : super(message ?? "conflictError");
}

class InternalServerErrorException extends LoadBoardException {
  const InternalServerErrorException([message])
    : super(message ?? "serverError");
}

class NoInternetConnectionException extends LoadBoardException {
  const NoInternetConnectionException([message])
    : super(message ?? "internetConnectionError");
}

class LaunchUrlException extends LoadBoardException {
  const LaunchUrlException([message]) : super(message ?? "noInternet");
}

class UnknownServerException extends LoadBoardException {
  const UnknownServerException([message])
    : super(message ?? "unknownErrorTryAgain");
}

class CacheException extends Equatable implements Exception {
  final String? message;

  const CacheException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}

class TokenException extends LoadBoardException {
  const TokenException([message]) : super(message ?? "tokenException");
}

class TokenDecodeException implements Exception {
  final String message;

  const TokenDecodeException(this.message);

  @override
  String toString() => 'TokenDecodeException: $message';
}
