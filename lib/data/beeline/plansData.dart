import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/plansItemModel.dart';

class BeelinePlansData extends PlansData{
  @override
   List items = 
  [
    PlansItemModel(
      title: 'OSON 10',
      type: 'OY',
      price: '10.000 so\'m',
      min: '10 daqiqa',
      internet: '10 MB',
      sms: '10 sms',
      code: '*110*61#',
      limit: '30 kun',
      text: '1 MB/daq/SMS = 100 so\'m',
    ),
    PlansItemModel(
      title: 'HAMMASI ZO\'R 1',
      type: 'OY',
      price: '20.000 so\'m',
      min: '1500 daqiqa',
      internet: '3000 MB',
      sms: '500 sms',
      code: '*2*3#',
      limit: '30 kun',
      text: null,
    ),
    PlansItemModel(
      title: "HAMMASI ZO'R 2",
      type: 'OY',
      price: '30.000 so\'m',
      min: '2500 daqiqa',
      internet: '5000 MB',
      sms: '500 sms',
      code: '*2*5#',
      limit: '30 kun',
      text: null,
    ),
    PlansItemModel(
      title: "HAMMASI ZO'R 3",
      type: 'OY',
      price: '40.000 so\'m',
      min: 'VIP daqiqa',
      internet: '8000 MB',
      sms: '1000 sms',
      code: '*2*8#',
      limit: '30 kun',
      text: "MB/SMS = 10 SO'M",
    ),
    PlansItemModel(
      title: "OSON 1",
      type: 'OY',
      price: '40.000 so\'m',
      min: 'VIP daqiqa',
      internet: '0 MB',
      sms: '0 sms',
      code: '*2*01#',
      limit: '30 kun',
      text: "MB/SMS = 1 SO'M",
    ),
    PlansItemModel(
      title: "UYDAGIDEK",
      type: 'OY',
      price: '55.000 so\'m',
      min: '2000 daqiqa',
      internet: '2000 MB',
      sms: '200 sms',
      code: '*110*66#',
      limit: '30 kun',
      text: null,
    ),
    PlansItemModel(
      title: "HAMMASI ZO'R 4",
      type: 'OY',
      price: '60.000 so\'m',
      min: 'VIP daqiqa',
      internet: '15000 MB',
      sms: '1000 sms',
      code: '*2*15#',
      limit: '30 kun',
      text: null,
    ),
    PlansItemModel(
      title: "STATUS SILVER",
      type: 'OY',
      price: '90.000 so\'m',
      min: 'VIP daqiqa',
      internet: '30000 MB',
      sms: '2000 sms',
      code: '*2*30#',
      limit: '30 kun',
      text: null,
    ),
    PlansItemModel(
      title: "STATUS PLATINUM",
      type: 'OY',
      price: '200.000 so\'m',
      min: 'VIP daqiqa',
      internet: '150000 MB',
      sms: '2000 sms',
      code: '*2*150#',
      limit: '30 kun',
      text: null,
    ),
    PlansItemModel(
      title: "BOLAJON",
      type: 'OY',
      price: '11.500 so\'m',
      min: '0 daqiqa',
      internet: '1500 MB',
      sms: '0 sms',
      code: '*110*538#',
      limit: '30 kun',
      text: null,
    ),
    // KUN
    PlansItemModel(
      title: "KUNLIK",
      type: 'KUN',
      price: '600 so\'m',
      min: '60 daqiqa',
      internet: '60 MB',
      sms: '0 sms',
      code: '*110*580#',
      limit: "1 kun",
      text: null,
    ),
    // TO'PLAMLAR
    PlansItemModel(
      title: "EXTRA 200",
      type: "TO'PLAMLAR",
      price: '10.000 so\'m',
      min: '200 daqiqa',
      internet: '200 MB',
      sms: '0 sms',
      code: '*110*500#',
      limit: null,
      text: null,
    ),
    PlansItemModel(
      title: "EXTRA 400",
      type: "TO'PLAMLAR",
      price: '18.000 so\'m',
      min: '400 daqiqa',
      internet: '400 MB',
      sms: '0 sms',
      code: '*110*501#',
      limit: null,
      text: null,
    ),
    PlansItemModel(
      title: "EXTRA 600",
      type: "TO'PLAMLAR",
      price: '25.000 so\'m',
      min: '600 daqiqa',
      internet: '600 MB',
      sms: '0 sms',
      code: '*110*502#',
      limit: null,
      text: null,
    ),
    PlansItemModel(
      title: "PLUS 7",
      type: "TO'PLAMLAR",
      price: '4.900 so\'m',
      min: '300 daqiqa',
      internet: '300 MB',
      sms: '300 sms',
      code: '*110*63#',
      limit: null,
      text: null,
    ),
    PlansItemModel(
      title: "MEGA HAFTA",
      type: "TO'PLAMLAR",
      price: '14.735 so\'m',
      min: '400 daqiqa',
      internet: '20 MB',
      sms: '700 sms',
      code: '*110*99*2#',
      limit: null,
      text: null,
    ),
    PlansItemModel(
      title: "PLUS 14",
      type: "TO'PLAMLAR",
      price: '9.900 so\'m',
      min: '1000 daqiqa',
      internet: '1000 MB',
      sms: '1000 sms',
      code: '*110*64#',
      limit: null,
      text: null,
    ),
    PlansItemModel(
      title: "ERKIN MULOQOT",
      type: "TO'PLAMLAR",
      price: '8.400 so\'m',
      min: '500 daqiqa',
      internet: '200 MB',
      sms: '500 sms',
      code: '*110*230#',
      limit: null,
      text: null,
    ),
    PlansItemModel(
      title: "ERKIN MULOQOT +",
      type: "TO'PLAMLAR",
      price: '12.600 so\'m',
      min: '500 daqiqa',
      internet: '200 MB',
      sms: '0 sms',
      code: '*110*225#',
      limit: null,
      text: null,
    ),
  ];
}
