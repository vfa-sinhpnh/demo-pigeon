import 'package:pigeon/pigeon.dart';

class Response {
  String? response;
}

@HostApi()
abstract class PigeonApi {
  @async
  Response testMessage(String fromFlutter);
}
