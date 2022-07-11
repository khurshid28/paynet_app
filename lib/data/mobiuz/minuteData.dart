import 'package:paynet_app/models/minuteItemModel.dart';

class MobiuzMinuteData {
  static List<MinuteItemModel> items = [
    MinuteItemModel(
      title: '60 daq',
      type: 'OY',
      price: '4.000 so\'m',
      limit: '30 KUN',
      code: '*171*103*60*1*010300368*1#',
    ),
    MinuteItemModel(
      title: '120 daq',
      type: 'OY',
      price: '7.000 so\'m',
      limit: '30 KUN',
      code: '*171*103*120*1*010300368*1#',
    ),
    MinuteItemModel(
      title: '180 daq',
      type: 'OY',
      price: '10.000 so\'m',
      limit: '30 KUN',
      code: '*171*103*180*1*010300368*1#',
    ),
    MinuteItemModel(
      title: '300 daq',
      type: 'OY',
      price: '16.000 so\'m',
      limit: '30 KUN',
      code: '*171*103*300*1*010300368*1#',
    ),
    MinuteItemModel(
      title: '900 daq',
      type: 'OY',
      price: '37.000 so\'m',
      limit: '30 KUN',
      code: '*171*103*900*1*010300368*1#',
    ),
    MinuteItemModel(
      title: '1200 daq',
      type: 'OY',
      price: '45.000 so\'m',
      limit: '30 KUN',
      code: '*171*103*1200*1*010300368*1#',
    ),
    MinuteItemModel(
      title: '1800 daq',
      type: 'OY',
      price: '62.000 so\'m',
      limit: '30 KUN',
      code: '*171*103*1800*1*010300368*1#',
    ),
    // GAP KO'P
    MinuteItemModel(
      title: 'VIP',
      type: 'GAP KO\'P',
      price: '10.000 so\'m',
      limit: 'Cheksiz',
      code: '*166#',
    ),
  ];
}
