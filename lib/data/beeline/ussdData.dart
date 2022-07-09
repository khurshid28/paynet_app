import 'package:paynet_app/models/plansItemModel.dart';

class BeelineUSSDData {
  static List<USSDItemModel> items = [
    PlansItemModel(
      title: 'title',
      type: 'type',
      price: 120,
      limit: 'limit',
      internet: 2,
      sms: 6,
      changePlanText: 'changePlanText',
      text: 'text',
      code: '+998950642827',
    ),
    // PlansItemModel(
    //   title: title,
    //   type: type,
    //   price: price,
    //   limit: limit,
    //   internet: internet,
    //   sms: sms,
    //   changePlanText: changePlanText,
    //   text: text,
    //   code: code,
    // )
  ];
}