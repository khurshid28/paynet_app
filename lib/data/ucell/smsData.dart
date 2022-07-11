import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/smsItemModel.dart';

class UcellSMSData implements SmsData{
  @override
   List items =  [
    SMSItemModel(
      type: 'OYLIK',
      title: '50 SMS',
      price: '1.684 so\'m',
      code: '*147*1*1#',
    ),
    SMSItemModel(
      type: 'OYLIK',
      title: '150 SMS',
      price: '4.210 so\'m',
      code: '*147*1*2#',
    ),
    SMSItemModel(
      type: 'OYLIK',
      title: '500 SMS',
      price: '10.525 so\'m',
      code: '*147*1*3#',
    ),
    // KUNLIK
    SMSItemModel(
      type: 'KUNLIK',
      title: '25 SMS',
      price: '632 so\'m',
      code: '*148*1*1#',
    ),
    SMSItemModel(
      type: 'KUNLIK',
      title: '40 SMS',
      price: '842 so\'m',
      code: '*148*1*2#',
    ),
    SMSItemModel(
      type: 'KUNLIK',
      title: '75 SMS',
      price: '1.263 so\'m',
      code: '*148*1*3#',
    ),
    // XALQARO
    SMSItemModel(
      type: 'XALQARO',
      title: '10 SMS',
      price: '8000 so\'m',
      code: '*789*1#',
    ),
    SMSItemModel(
      type: 'XALQARO',
      title: '30 SMS',
      price: '22.000 so\'m',
      code: '*789*2#',
    ),
    SMSItemModel(
      type: 'XALQARO',
      title: '50 SMS',
      price: '34.000 so\'m',
      code: '*789*3#',
    ),
    SMSItemModel(
      type: 'XALQARO',
      title: '100 SMS',
      price: '64.000 so\'m',
      code: '*789*4#',
    ),
  ];
}
