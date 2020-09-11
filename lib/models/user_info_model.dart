
class UserInfoModel {
  String userId;
  String name;
  int age;

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'user_id': userId, 'name': name, 'age': age};
}
