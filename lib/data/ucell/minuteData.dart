import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/minuteItemModel.dart';

class UcellMinuteData extends MinuteData{
  @override
  @override
    List<String> types = [
    'ODDIY',
    

  ];
  @override
   List items =  [
    MinuteItemModel(
      title: '200 daq',
      type: 'ODDIY',
      price: '4.000 so\'m',
      limit: '30 KUN',
      code: '*130#',
    ),
    MinuteItemModel(
      title: '600 daq',
      type: 'ODDIY',
      price: '8.000 so\'m',
      limit: '30 KUN',
      code: '*130#',
    ),
    MinuteItemModel(
      title: '12.000 daq',
      type: 'ODDIY',
      price: '4.000 so\'m',
      limit: '30 KUN',
      code: '*130#',
    ),
  ];
}
