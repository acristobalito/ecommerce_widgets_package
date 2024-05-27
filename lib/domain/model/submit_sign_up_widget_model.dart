/// Model used for **SignUpFormWidgetTemplate**
class SubmitSignUpWidgetModel {
  final String email;
  final String userName;
  final String password;
  final String firstName;
  final String lastName;
  final String phone;

  SubmitSignUpWidgetModel(
      {required this.email,
      required this.userName,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.phone});
}
