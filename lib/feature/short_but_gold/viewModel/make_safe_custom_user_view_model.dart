import 'package:practices/feature/short_but_gold/extension/make_safe_custom_extension.dart';
import 'package:practices/feature/short_but_gold/model/user_model.dart';
import 'package:practices/feature/short_but_gold/service/user_service.dart';

class MakeSafeCustomUserViewModel {
  Future<List<User>> makeSafeList() async {
    final users = await UserNetworkService.instance.getUsers();
    if (users.isEmpty) {
      return [];
    }
    return users.makeSafeCustom((value) => value != null && value.age != null && value.name != null);
  }
}
