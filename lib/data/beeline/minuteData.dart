import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/minuteItemModel.dart';

class BeelineMinuteData extends MinuteData{
  @override
   List items = [
    MinuteItemModel(
      title: '100 DAQ',
      type: null,
      price: '10.000 so\'m',
      limit: '30 KUN',
      code: null,
    ),
    MinuteItemModel(
      title: '200 DAQ',
      type: null,
      price: '10.000 so\'m',
      limit: '30 KUN',
      code: "*110*500#",
    ),
    MinuteItemModel(
      title: '400 DAQ',
      type: null,
      price: '18.000 so\'m',
      limit: '30 KUN',
      code: "*110*501#",
    ),
    MinuteItemModel(
      title: '600 DAQ',
      type: null,
      price: '25.000 so\'m',
      limit: '30 KUN',
      code: "*110*502#",
    ),
  ];
}
