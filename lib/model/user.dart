class User {
  String _id;
  String _name;

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  User(this._id, this._name);

  @override
  String toString() {
    return 'User{id: $_id, name: $_name}';
  }
}
