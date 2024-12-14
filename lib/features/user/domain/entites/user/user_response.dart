class UserResponse {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final bool status;

  UserResponse({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.status
  });
}