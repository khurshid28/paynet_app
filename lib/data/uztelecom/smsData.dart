import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/smsItemModel.dart';

class UztelecomSMSData extends SmsData{
  @override
    List<String> types = [
    'OY',
    'KUN',
    'XALQARO',
    'KONSTRUKTOR'

  ];
  @override
   List items =  [
    SMSItemModel(
      type: 'OY',
      price: '420 so\'m',
      title: '10 SMS',
      code: '*111*1*1*1#',
    ),
    SMSItemModel(
      type: 'OY',
      price: '1.680 so\'m',
      title: '50 SMS',
      code: '*111*1*1*2#',
    ),
    SMSItemModel(
      type: 'OY',
      price: '5.200 so\'m',
      title: '200 SMS',
      code: '*111*1*1*3#',
    ),
    SMSItemModel(
      type: 'OY',
      price: '9.500 so\'m',
      title: '500 SMS',
      code: '*111*1*1*4#',
    ),
    // KUN
    SMSItemModel(
      type: 'KUN',
      price: '420 so\'m',
      title: '50 SMS',
      code: '*111*1*19*1*1#',
    ),
    SMSItemModel(
      type: 'KUN',
      price: '840 so\'m',
      title: '100 SMS',
      code: '*111*1*19*2*1#',
    ),
    // XALQARO
    SMSItemModel(
      type: 'XALQARO',
      price: '9.900 so\'m',
      title: '10 SMS',
      code: '*111*2*2*1#',
    ),
    SMSItemModel(
      type: 'XALQARO',
      price: '18.000 so\'m',
      title: '20 SMS',
      code: '*111*2*2*2#',
    ),
    SMSItemModel(
      type: 'XALQARO',
      price: '24.800 so\'m',
      title: '30 SMS',
      code: '*111*2*2*3#',
    ),
    SMSItemModel(
      type: 'XALQARO',
      price: '29.700 so\'m',
      title: '40 SMS',
      code: '*111*2*2*4#',
    ),
    SMSItemModel(
      type: 'XALQARO',
      price: '33.000 so\'m',
      title: '50 SMS',
      code: '*111*2*2*5#',
    ),
    // KONSTRUKTOR
    SMSItemModel(
      type: 'KONSTRUKTOR',
      price: '420 so\'m',
      title: '50 SMS',
      code: '*111*2*19*2*1#',
    ),
    SMSItemModel(
      type: 'KONSTRUKTOR',
      price: '840 so\'m',
      title: '100 SMS',
      code: '*111*2*19*2*1#',
    ),
    SMSItemModel(
      type: 'KONSTRUKTOR',
      price: '420 so\'m',
      title: '10 SMS',
      code: '*9999*2*4*1#',
    ),
    SMSItemModel(
      type: 'KONSTRUKTOR',
      price: '1.680 so\'m',
      title: '50 SMS',
      code: '*9999*2*4*2#',
    ),
    SMSItemModel(
      type: 'KONSTRUKTOR',
      price: '5.200 so\'m',
      title: '200 SMS',
      code: '*9999*2*4*3#',
    ),
    SMSItemModel(
      type: 'KONSTRUKTOR',
      price: '9.500 so\'m',
      title: '500 SMS',
      code: '*9999*2*4*4#',
    ),
  ];
}
