class LoginResponse {
  final String token;
  final DateTime expiration;

  LoginResponse({
    required this.token,
    required this.expiration,
  });
}