class SubmitSignUpModel {
  final String email;
  final String userName;
  final String password;
  final String firstName;
  final String lastName;
  final String phone;

  SubmitSignUpModel(
      {required this.email,
      required this.userName,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.phone});
}
