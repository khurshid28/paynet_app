import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/plansItemModel.dart';

class UztelecomPlansData implements PlansData{
  @override
   List items =  [
    PlansItemModel(
      title: 'MILLIY 10',
      type: 'OY',
      price: '10.000 so\'m',
      min: '10 daqiqa',
      internet: '10 MB',
      sms: '10 sms',
      code: '*111*1*11*1#',
      text: '1 MB/daq/SMS = 10 so\'m',
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'MILLIY 15',
      type: 'OY',
      price: '15.000 so\'m',
      min: '100 daqiqa',
      internet: '500 MB',
      sms: '500 sms',
      code: '*111*1*11*2#',
      text: '1 daq/SMS = 10 so\'m, 1 MB = 5 so\'m',
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'MILLIY 40',
      type: 'OY',
      price: '40.000 so\'m',
      min: 'VIP daqiqa',
      internet: '8192 MB',
      sms: '3000 sms',
      code: '*111*1*11*3#',
      text: 'SMS/MB = 80 so\'m',
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'MILLIY 50',
      type: 'OY',
      price: '50.000 so\'m',
      min: 'VIP daqiqa',
      internet: '12288 MB',
      sms: '5000 sms',
      code: '*111*1*11*4#',
      text: 'SMS/MB = 80 so\'m',
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'MILLIY 70',
      type: 'OY',
      price: '70.000 so\'m',
      min: 'VIP daqiqa',
      internet: '20480 MB',
      sms: '5000 sms',
      code: '*111*1*11*5#',
      text: 'SMS/MB = 80 so\'m',
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'MILLIY 100',
      type: 'OY',
      price: '100.000 so\'m',
      min: 'VIP daqiqa',
      internet: '35840 MB',
      sms: '5000 sms',
      code: '*111*1*11*6#',
      text: 'SMS/MB = 80 so\'m',
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'MILLIY VIP',
      type: 'OY',
      price: '50.000 so\'m',
      min: 'VIP daqiqa',
      internet: 'VIP MB',
      sms: '5000 sms',
      code: '*111*1*11*7#',
      text: 'SMS/MB = 80 so\'m',
      limit: '30 kun',
    ),
    // UNITS
    PlansItemModel(
      title: 'UNITS 700',
      type: 'UNITS',
      price: '7.000 so\'m',
      min: '0 daqiqa',
      internet: '0 MB',
      sms: '0 sms',
      code: '*777*1#',
      text: "Kiritilgan limit: 700 Units, daq/MB/sms = 1 Unit",
      limit: '7 kun',
    ),
    PlansItemModel(
      title: 'UNITS 1500',
      type: 'UNITS',
      price: '15.000 so\'m',
      min: '0 daqiqa',
      internet: '0 MB',
      sms: '0 sms',
      code: '*777*2#',
      text: "Kiritilgan limit: 1500 Units, daq/MB/sms = 1 Unit",
      limit: '15 kun',
    ),
    PlansItemModel(
      title: 'UNITS 8000',
      type: 'UNITS',
      price: '35.000 so\'m',
      min: '0 daqiqa',
      internet: '0 MB',
      sms: '0 sms',
      code: '*777*4#',
      text: "Kiritilgan limit: 8000 Units, daq/MB/sms = 1 Unit",
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'UNITS 11000',
      type: 'UNITS',
      price: '45.000 so\'m',
      min: '0 daqiqa',
      internet: '0 MB',
      sms: '0 sms',
      code: '*777*5#',
      text: "Kiritilgan limit: 11000 Units, daq/MB/sms = 1 Unit",
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'UNITS 14000',
      type: 'UNITS',
      price: '55.000 so\'m',
      min: '0 daqiqa',
      internet: '0 MB',
      sms: '0 sms',
      code: '*777*6#',
      text: "Kiritilgan limit: 14000 Units, daq/MB/sms = 1 Unit",
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'UNITS 18000',
      type: 'UNITS',
      price: '65.000 so\'m',
      min: '0 daqiqa',
      internet: '0 MB',
      sms: '0 sms',
      code: '*777*7#',
      text: "Kiritilgan limit: 18000 Units, daq/MB/sms = 1 Unit",
      limit: '30 kun',
    ),
    PlansItemModel(
      title: 'UNITS 22000',
      type: 'UNITS',
      price: '75.000 so\'m',
      min: '0 daqiqa',
      internet: '0 MB',
      sms: '0 sms',
      code: '*777*8#',
      text: "Kiritilgan limit: 22000 Units, daq/MB/sms = 1 Unit",
      limit: '30 kun',
    ),
    // IMTIYOZLI
    PlansItemModel(
      title: "TA'LIM",
      type: 'IMTIYOZLI',
      price: '34.900 so\'m',
      min: '1000 daqiqa',
      internet: '8000 MB',
      sms: '500 sms',
      code: null,
      text: "daq/MB = 40 so'm, sms = 84 so'm",
      limit: '30 kun',
    ),
    PlansItemModel(
      title: "MAKTAB",
      type: 'IMTIYOZLI',
      price: '29.900 so\'m',
      min: '500 daqiqa',
      internet: '5000 MB',
      sms: '500 sms',
      code: null,
      text: "daq/MB = 40 so'm, sms = 84 so'm",
      limit: '30 kun',
    ),
    PlansItemModel(
      title: "YOSHLAR",
      type: 'IMTIYOZLI',
      price: '5.900 so\'m',
      min: '500 daqiqa',
      internet: '0 MB',
      sms: '0 sms',
      code: null,
      text: "daq/MB/SMS = 25 so'm",
      limit: '30 kun',
    ),
    PlansItemModel(
      title: "BOLAJON",
      type: 'IMTIYOZLI',
      price: '18.000 so\'m',
      min: '200 daqiqa',
      internet: '2000 MB',
      sms: '200 sms',
      code: null,
      text: "daq = 40 so'm, SMS = 20 so'm",
      limit: '30 kun',
    ),
  ];
}
