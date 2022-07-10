import 'package:paynet_app/models/plansItemModel.dart';
import 'package:paynet_app/models/ussdItemModel.dart';

class BeelineUSSDData {
  static List<USSDItemModel> items = [
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*102#',
      title: 'HISOBNI TEKSHIRISH',
      subtitle: 'Hisobingizdagi qoldiqni ko\'rish uchun ushbu kodni yuborishingiz mumkin',
    ),
  ];
}
