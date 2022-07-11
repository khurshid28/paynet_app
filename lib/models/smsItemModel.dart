import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class SMSItemModel {
  String? type;
  String? code;
  String? title;
  String? price;
  Future call() async {
    await FlutterPhoneDirectCaller.callNumber(code!);
  }
  SMSItemModel({
    required this.type,
    required this.code,
    required this.title,
    required this.price,
  });
}
