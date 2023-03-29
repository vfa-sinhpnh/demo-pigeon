import 'package:pigeon/pigeon.dart';

class Response {
  String? response;
}

@HostApi()
abstract class PigeonApi {
  Response testMessage(String fromFlutter);
}
