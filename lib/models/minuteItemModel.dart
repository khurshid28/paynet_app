import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class MinuteItemModel {
  String? title;
  String? type;
  String? price;
  String? limit;
  String? code;
  Future call() async {
    await FlutterPhoneDirectCaller.callNumber(code!);
  }

  MinuteItemModel({
    required this.title,
    required this.type,
    required this.price,
    required this.limit,
    required this.code,
  });
}
