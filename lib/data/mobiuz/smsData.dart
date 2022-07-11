import 'package:paynet_app/models/smsItemModel.dart';

class MobiuzSMSData {
  static List<SMSItemModel> items = [
    SMSItemModel(
      type: 'OY',
      price: '4.500 so\'m',
      title: 'SMS 100',
      code: '*171*018*1*010300368*1#',
    ),
    SMSItemModel(
      type: 'OY',
      price: '10.500 so\'m',
      title: 'SMS 300',
      code: '*171*018*2*010300368*1#',
    ),
    SMSItemModel(
      type: 'SMS ONNET',
      price: '450 so\'m',
      title: 'SMS 100',
      code: '*171*204*50*010300368*1#',
    ),
  ];
}
