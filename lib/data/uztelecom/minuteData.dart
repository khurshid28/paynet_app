import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/minuteItemModel.dart';

class UztelecomMinuteData extends MinuteData{
  @override
   List items =  [
    MinuteItemModel(
      title: '100 daq',
      type: "DAQIQALAR",
      price: '4.000 so\'m',
      limit: '30 KUN',
      code: '*111*1*3*1#',
    ),
    MinuteItemModel(
      title: '300 daq',
      type: "DAQIQALAR",
      price: '10.000 so\'m',
      limit: '30 KUN',
      code: '*111*1*3*2#',
    ),
    MinuteItemModel(
      title: '600 daq',
      type: "DAQIQALAR",
      price: '16.000 so\'m',
      limit: '30 KUN',
      code: '*111*1*3*3#',
    ),
    MinuteItemModel(
      title: '1200 daq',
      type: "DAQIQALAR",
      price: '24.000 so\'m',
      limit: '30 KUN',
      code: '*111*1*3*4#',
    ),
    // KONSTRUKTOR
    MinuteItemModel(
      title: '50 daq',
      type: "KONSTRUKTOR",
      price: '3.360 so\'m',
      limit: '30 KUN',
      code: '*9999*1*3*1#',
    ),
    MinuteItemModel(
      title: '100 daq',
      type: "KONSTRUKTOR",
      price: '5.260 so\'m',
      limit: '30 KUN',
      code: '*9999*1*3*2#',
    ),
    MinuteItemModel(
      title: '300 daq',
      type: "KONSTRUKTOR",
      price: '16.840 so\'m',
      limit: '30 KUN',
      code: '*9999*1*3*3#',
    ),
    MinuteItemModel(
      title: '500 daq',
      type: "KONSTRUKTOR",
      price: '23.150 so\'m',
      limit: '30 KUN',
      code: '*9999*1*3*4#',
    ),
    MinuteItemModel(
      title: '900 daq',
      type: "KONSTRUKTOR",
      price: '37.890 so\'m',
      limit: '30 KUN',
      code: '*9999*1*3*5#',
    ),
    MinuteItemModel(
      title: '1500 daq',
      type: "KONSTRUKTOR",
      price: '58.940 so\'m',
      limit: '30 KUN',
      code: '*9999*1*3*6#',
    ),
    MinuteItemModel(
      title: '2000 daq',
      type: "KONSTRUKTOR",
      price: '67.360 so\'m',
      limit: '30 KUN',
      code: '*9999*1*3*7#',
    ),
  ];
}
