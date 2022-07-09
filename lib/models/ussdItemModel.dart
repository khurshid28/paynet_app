import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class USSDItemModel {
  String? type;
  String? code;
  String? title;
  String? subtitle;
  Future call() async {
    await FlutterPhoneDirectCaller.callNumber(code!);
  }

  USSDItemModel({
    required this.type,
    required this.code,
    required this.title,
    required this.subtitle,
  });
}
