class ApiConstants {
  static const String unAuthenticatedConsumer = 'unAuthenticatedConsumer';
  static const String authenticatedConsumer = 'authenticatedConsumer';

  static const String kSocketUrlName = 'socketUrl';

  ///Websocket
  static const String kSocketBaseUrl = 'wss://app.dev.com';

  /// Auth
  static const String loginEndPoint = 'sso/auth/';
  static const String signUpEndPoint = 'sso/signup/';
  static const String updateAccountEndPoint = 'sso/account/';
  static const String changePasswordEndPoint = '/sso/password';

  static const String support = '/support';
}

class ApiStatusCodes {
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int serverError = 500;
}
