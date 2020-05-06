class LoginResponse {
  final bool success;
  final int userId;
  final String message;
  LoginResponse({
    this.success = true,
    this.userId,
    this.message,
  });
}
