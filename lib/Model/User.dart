class UserModel {
  int _id;
  String _userName;
  String _password;


  set id(int value) {
    _id = value;
  }

  UserModel();

  UserModel.fromMap(Map<String, dynamic> map)
      : assert(map["userName"] != null),
        assert(map["password"] != null),
        _userName = map["userName"],
        _password = map["password"] is String
            ? map["password"].toString()
            : map["password"];

  Map<String, dynamic> toMap() {
    return {
      "userName": this._userName,
      "password": this._password,
    };
  }

  int get id => _id;

  set userName(String value) {
    _userName = value;
  }

  set password(String value) {
    _password = value;
  }

  String get userName => _userName;

  String get password => _password;
}