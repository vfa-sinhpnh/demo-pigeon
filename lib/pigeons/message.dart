import 'package:pigeon/pigeon.dart';

class Response {
  String? response;
  bool? status;
}

@HostApi()
abstract class PigeonApi {
  @async
  Response testMessage(String fromFlutter, bool status);
}
