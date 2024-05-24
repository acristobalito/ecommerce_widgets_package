/// Model used for **ContactViewWidgetTemplate**
class ContactModel {
  final String image;
  final String name;
  final String occupation;
  final String email;
  final String phone;
  final String address;
  final String country;

  ContactModel(
      {required this.image,
      required this.name,
      required this.occupation,
      required this.email,
      required this.phone,
      required this.address,
      required this.country});
}
