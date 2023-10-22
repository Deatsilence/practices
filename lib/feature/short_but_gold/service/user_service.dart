import 'package:practices/feature/short_but_gold/model/user_model.dart';

class UserNetworkService {
  UserNetworkService._init();
  static UserNetworkService? _instance;

  static UserNetworkService get instance {
    _instance ??= UserNetworkService._init();
    return _instance!;
  }

  Future<List<User?>> getUsers() async {
    await Future.delayed(const Duration(seconds: 2));

    List<User?> users = [
      User("Mert", "23"),
      User(null, "21"),
      User("Mete", null),
      User("Taha", null),
      User("Enes", "31"),
      User("Melih", "25"),
      null,
    ];
    return users;
  }
}
