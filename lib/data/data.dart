

abstract class Data<T> {
  List<String> types = [];
  List<T> items = [];
}

class InternetData implements Data {
  @override

  List<String> types = [];
  @override
  List items = [];
}

class MinuteData extends Data {
  @override
  List<String> types = [];
  @override
  List items = [];
}

class PlansData extends Data {
  @override
  List<String> types = [];
  @override
  List items = [];
}

class SmsData extends Data {
  @override
  List<String> types = [];
  @override
  List items = [];
}

class UssdData extends Data {
  @override
  List<String> types = [];
  @override
  List items = [];
}
