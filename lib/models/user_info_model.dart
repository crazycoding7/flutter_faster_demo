class UserInfoModel {
  String userId;
  String name;
  int sex;

  UserInfoModel.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        name = json['name'],
        sex = json['sex'];

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'userId': userId, 'name': name, 'sex': sex};
}
