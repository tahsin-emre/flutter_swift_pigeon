import 'package:pigeon/pigeon_lib.dart';

class Team {
  String? uid;
  String? name;
  String? leauge;
}

@HostApi()
abstract class TeamApi {
  List<Team?> getTeams();
}
