
class UserModel {
  final String name;
  final String emailAddress;
  final String password;

  UserModel(
      {required this.name, required this.emailAddress, required this.password});
  factory UserModel.fromjson(json) {
    return UserModel(
        name: json["name"],
        emailAddress: json["emailAddress"],
        password: json["password"]);
  }
}
