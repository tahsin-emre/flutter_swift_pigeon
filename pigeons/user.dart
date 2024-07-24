import 'package:pigeon/pigeon.dart';

class User {
  String? id;
  String? name;
}

@HostApi()
abstract class UserApi {
  User getUser(String userId);
}
