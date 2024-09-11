
sealed class UserError extends Error  {
  final String message;

  UserError(this.message);
}

class UserNotFoundError extends UserError {
  UserNotFoundError() : super('User Not Found');
}

class UserCreationError extends UserError {
  final String errorMessage;
  UserCreationError({required this.errorMessage}) : super(errorMessage);
}

class UserUpdateError extends UserError {
  final String errorMessage;
  UserUpdateError({required this.errorMessage}) : super(errorMessage);
}

class UserDeletionError extends UserError {
  final String errorMessage;
  UserDeletionError({required this.errorMessage}) : super(errorMessage);
}

