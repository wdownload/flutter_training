class User {
  final String name;
  final String email;
  String _password;
  String _username;
  User({this.name, this.email, username, password}) {
    _username = username;
    _password = password;
  }

  String get username => _username;

  void changeUsername(String username) {
    username = _username;
  }

  String get password => _password;

  void changePassword(String password) {
    password = _password;
  }
}
