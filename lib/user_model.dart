
class UserModel {
  String name;
  String phone;

  UserModel({
    required this.name,
    required this.phone,
  });

  UserModel.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        phone = json["phone"];
}
