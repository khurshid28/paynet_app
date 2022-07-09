import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class PlansItemModel {
  String? title;
  String? type;
  String? price;
  String? limit;
  String? internet;
  String? sms;
  String? min;
  String? text;
  String? code;
  Future call() async {
    await FlutterPhoneDirectCaller.callNumber(code!);
  }

  PlansItemModel({
    required this.title,
    required this.type,
    required this.price,
    required this.limit,
    required this.internet,
    required this.sms,
    required this.min,
    required this.text,
    required this.code,
  });
}
