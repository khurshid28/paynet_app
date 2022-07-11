import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class INTERNETItemModel {
  String? type;
  String? code;
  String? title;
  String? limit;
  String? price;

  Future call() async {
    await FlutterPhoneDirectCaller.callNumber(code!);
  }

  INTERNETItemModel({
    required this.type,
    required this.code,
    required this.title,
    required this.limit,
    required this.price,
  });
}
