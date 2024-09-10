// Error Handler for Authentication


sealed class AuthError extends Error  {
  final String message;

  AuthError(this.message);
}

class LoginCancelledError extends AuthError {
  LoginCancelledError() : super('Login Cancelled');
}

class LoginFailedError extends AuthError {
  final String errorMessage;
  LoginFailedError({required this.errorMessage}) : super(errorMessage);
}

class LogoutFailedError extends AuthError {
  final String errorMessage;
  LogoutFailedError({required this.errorMessage}) : super(errorMessage);
}
