import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/minuteItemModel.dart';

class UcellMinuteData implements MinuteData{
  @override
   List items =  [
    MinuteItemModel(
      title: '200 daq',
      type: null,
      price: '4.000 so\'m',
      limit: '30 KUN',
      code: '*130#',
    ),
    MinuteItemModel(
      title: '600 daq',
      type: null,
      price: '8.000 so\'m',
      limit: '30 KUN',
      code: '*130#',
    ),
    MinuteItemModel(
      title: '12.000 daq',
      type: null,
      price: '4.000 so\'m',
      limit: '30 KUN',
      code: '*130#',
    ),
  ];
}
