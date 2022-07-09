import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class PlansItemModel {
  String? title;
  String? type;
  int? price;
  String? limit;
  int? internet;
  int? sms;
  String? changePlanText;
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
    required this.changePlanText,
    required this.text,
    required this.code,
  });
}
