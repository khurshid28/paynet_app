import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/smsItemModel.dart';

class BeelineSMSData extends SmsData{
  @override
   List items =  [
    SMSItemModel(
      title: '20 SMS',
      type: 'KUN',
      price: '500 so\'m',
      code: '*110*161#',
    ),
    SMSItemModel(
      title: '50 SMS',
      type: 'KUN',
      price: '1000 so\'m',
      code: '*110*162#',
    ),
    SMSItemModel(
      title: '250 SMS',
      type: 'KUN',
      price: '1300 so\'m',
      code: '*110*151#',
    ),
    // OY
    SMSItemModel(
      title: '100 SMS',
      type: 'OY',
      price: '5.263 so\'m',
      code: '*110*044#',
    ),
    SMSItemModel(
      title: '500 SMS',
      type: 'OY',
      price: '13.683 so\'m',
      code: '*110*045#',
    ),
    SMSItemModel(
      title: '1000 SMS',
      type: 'OY',
      price: '22.103 so\'m',
      code: '*110*046#',
    ),
    // XALQARO
    SMSItemModel(
      title: '25 SMS',
      type: 'XALQARO',
      price: '5.263 so\'m',
      code: '*110*041#',
    ),
    SMSItemModel(
      title: '50 SMS',
      type: 'XALQARO',
      price: '8.420 so\'m',
      code: '*110*042#',
    ),
    SMSItemModel(
      title: '100 SMS',
      type: 'XALQARO',
      price: '12.630 so\'m',
      code: '*110*043#',
    ),
  ];
}
