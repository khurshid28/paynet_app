import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/internetItemModel.dart';

class UztelecomInternetData extends InternetData{
  @override
    List<String> types = [
    'OY',
    'KUN',
    'TUN',
    'OY(AVTO)',
    'KUN(AVTO)',
    'TAS-IX',
    'KONSTRUKTOR'

  ];
  @override
   List items =  [
    INTERNETItemModel(
      title: '1000 MB',
      type: 'OY',
      price: '9.000 so\'m',
      limit: '30 KUN',
      code: '*147*10072*21447#',
    ),
    INTERNETItemModel(
      title: '1500 MB',
      type: 'OY',
      price: '14.000 so\'m',
      limit: '30 KUN',
      code: '*147*10073*21447#',
    ),
    INTERNETItemModel(
      title: '3000 MB',
      type: 'OY',
      price: '18.000 so\'m',
      limit: '30 KUN',
      code: '*147*10074*21447#',
    ),
    INTERNETItemModel(
      title: '5000 MB',
      type: 'OY',
      price: '25.000 so\'m',
      limit: '30 KUN',
      code: '*147*10075*21447#',
    ),
    INTERNETItemModel(
      title: '8000 MB',
      type: 'OY',
      price: '35.000 so\'m',
      limit: '30 KUN',
      code: '*147*10076*21447#',
    ),
    INTERNETItemModel(
      title: '12000 MB',
      type: 'OY',
      price: '50.000 so\'m',
      limit: '30 KUN',
      code: '*147*10077*21447#',
    ),
    INTERNETItemModel(
      title: '16000 MB',
      type: 'OY',
      price: '60.000 so\'m',
      limit: '30 KUN',
      code: '*147*10267*21447#',
    ),
    INTERNETItemModel(
      title: '20000 MB',
      type: 'OY',
      price: '65.000 so\'m',
      limit: '30 KUN',
      code: '*147*10078*21447#',
    ),
    INTERNETItemModel(
      title: '30000 MB',
      type: 'OY',
      price: '75.000 so\'m',
      limit: '30 KUN',
      code: '*147*10079*21447#',
    ),
    INTERNETItemModel(
      title: '50000 MB',
      type: 'OY',
      price: '85.000 so\'m',
      limit: '30 KUN',
      code: '*147*10080*21447#',
    ),
    INTERNETItemModel(
      title: '75000 MB',
      type: 'OY',
      price: '110.000 so\'m',
      limit: '30 KUN',
      code: '*147*10150*21447#',
    ),
    // KUN
    INTERNETItemModel(
      title: '100 MB',
      type: 'KUN',
      price: '3.000 so\'m',
      limit: '1 KUN',
      code: '*147*10043*21447#',
    ),
    INTERNETItemModel(
      title: '300 MB',
      type: 'KUN',
      price: '6.000 so\'m',
      limit: '1 KUN',
      code: '*147*10050*21447#',
    ),
    INTERNETItemModel(
      title: '600 MB',
      type: 'KUN',
      price: '9.000 so\'m',
      limit: '1 KUN',
      code: '*147*10051*21447#',
    ),
    // TUN
    INTERNETItemModel(
      title: 'VIP 1',
      type: 'TUN',
      price: '6.300 so\'m',
      limit: '1 KUN',
      code: '*111*1*18*1#',
    ),
    INTERNETItemModel(
      title: 'VIP 7',
      type: 'TUN',
      price: '31.500 so\'m',
      limit: '7 KUN',
      code: '*111*1*18*3#',
    ),
    INTERNETItemModel(
      title: 'VIP 30',
      type: 'TUN',
      price: '99.000 so\'m',
      limit: '30 KUN',
      code: '*111*1*18*2#',
    ),
    // OY(AVTO)
    INTERNETItemModel(
      title: '3000 MB',
      type: 'OY(AVTO)',
      price: '18.000 so\'m',
      limit: '30 KUN',
      code: '*147*10055*21447#',
    ),
    INTERNETItemModel(
      title: '5000 MB',
      type: 'OY(AVTO)',
      price: '25.000 so\'m',
      limit: '30 KUN',
      code: '*147*10056*21447#',
    ),
    INTERNETItemModel(
      title: '8000 MB',
      type: 'OY(AVTO)',
      price: '35.000 so\'m',
      limit: '30 KUN',
      code: '*147*10057*21447#',
    ),
    INTERNETItemModel(
      title: '12000 MB',
      type: 'OY(AVTO)',
      price: '50.000 so\'m',
      limit: '30 KUN',
      code: '*147*10151*21447#',
    ),
    INTERNETItemModel(
      title: '16000 MB',
      type: 'OY(AVTO)',
      price: '60.000 so\'m',
      limit: '30 KUN',
      code: '*147*10156*21447#',
    ),
    INTERNETItemModel(
      title: '20000 MB',
      type: 'OY(AVTO)',
      price: '65.000 so\'m',
      limit: '30 KUN',
      code: '*147*10152*21447#',
    ),
    INTERNETItemModel(
      title: '30000 MB',
      type: 'OY(AVTO)',
      price: '75.000 so\'m',
      limit: '30 KUN',
      code: '*147*10153*21447#',
    ),
    INTERNETItemModel(
      title: '50000 MB',
      type: 'OY(AVTO)',
      price: '85.000 so\'m',
      limit: '30 KUN',
      code: '*147*10154*21447#',
    ),
    // KUN(AVTO)
    INTERNETItemModel(
      title: '100 MB',
      type: 'KUN(AVTO)',
      price: '1.499 so\'m',
      limit: '1 KUN',
      code: '*121*6*1*1#',
    ),
    INTERNETItemModel(
      title: '300 MB',
      type: 'KUN(AVTO)',
      price: '2.999 so\'m',
      limit: '1 KUN',
      code: '*121*6*2*1#',
    ),
    INTERNETItemModel(
      title: '600 MB',
      type: 'KUN(AVTO)',
      price: '4.499 so\'m',
      limit: '1 KUN',
      code: '*121*6*3*1#',
    ),
    // TAS-IX
    INTERNETItemModel(
      title: '2048 MB',
      type: 'TAS-IX',
      price: '15.000 so\'m',
      limit: '90 KUN',
      code: '*147*10068*21447#',
    ),
    INTERNETItemModel(
      title: '10240 MB',
      type: 'TAS-IX',
      price: '40.000 so\'m',
      limit: '90 KUN',
      code: '*147*10069*21447#',
    ),
    INTERNETItemModel(
      title: '15360 MB',
      type: 'TAS-IX',
      price: '50.000 so\'m',
      limit: '90 KUN',
      code: '*147*10070*21447#',
    ),
    // KONSTRUKTOR
    INTERNETItemModel(
      title: '100 MB',
      type: 'KONSTRUKTOR',
      price: '6.310 so\'m',
      limit: '30 KUN',
      code: '*147*10129*21447#',
    ),
    INTERNETItemModel(
      title: '500 MB',
      type: 'KONSTRUKTOR',
      price: '21.050 so\'m',
      limit: '30 KUN',
      code: '*147*10133*21447#',
    ),
    INTERNETItemModel(
      title: '1000 MB',
      type: 'KONSTRUKTOR',
      price: '27.360 so\'m',
      limit: '30 KUN',
      code: '*147*10132*21447#',
    ),
    INTERNETItemModel(
      title: '2000 MB',
      type: 'KONSTRUKTOR',
      price: '46.310 so\'m',
      limit: '30 KUN',
      code: '*147*10131*21447#',
    ),
    INTERNETItemModel(
      title: '4000 MB',
      type: 'KONSTRUKTOR',
      price: '71.570 so\'m',
      limit: '30 KUN',
      code: '*147*10130*21447#',
    ),
  ];
}
