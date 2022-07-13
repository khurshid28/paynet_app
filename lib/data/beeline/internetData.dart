import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/internetItemModel.dart';

class BeelineInternetData extends InternetData {
  @override
  List<String> types = [
    'OY',
    'HAFTA',
    'KUN'

  ];
  @override
  List items = [
    INTERNETItemModel(
      title: '4G OY',
      type: 'OY',
      price: '60.000 so\'m',
      limit: '30 KUN',
      code: '*110*59#',
    ),
    INTERNETItemModel(
      title: '1 GB',
      type: 'OY',
      price: '10.000 so\'m',
      limit: '30 KUN',
      code: '*1*01*8116#',
    ),
    INTERNETItemModel(
      title: '2 GB',
      type: 'OY',
      price: '15.000 so\'m',
      limit: '30 KUN',
      code: '*1*02*8116#',
    ),
    INTERNETItemModel(
      title: '10 GB',
      type: 'OY',
      price: '45.000 so\'m',
      limit: '30 KUN',
      code: '*1*10*8116#',
    ),
    INTERNETItemModel(
      title: '20 GB',
      type: 'OY',
      price: '65.000 so\'m',
      limit: '30 KUN',
      code: '*1*20*8116#',
    ),
    INTERNETItemModel(
      title: '30 GB',
      type: 'OY',
      price: '75.000 so\'m',
      limit: '30 KUN',
      code: '*1*30*8116#',
    ),
    INTERNETItemModel(
      title: '50 GB',
      type: 'OY',
      price: '90.000 so\'m',
      limit: '30 KUN',
      code: '*1*50*8116#',
    ),
    INTERNETItemModel(
      title: '75 GB',
      type: 'OY',
      price: '110.000 so\'m',
      limit: '30 KUN',
      code: '*1*75*8116#',
    ),
    // HAFTA
    INTERNETItemModel(
      title: '4G HAFTA',
      type: 'HAFTA',
      price: '30.000 so\'m',
      limit: '7 KUN',
      code: '*110*62#',
    ),
    INTERNETItemModel(
      title: '1.5 GB',
      type: 'HAFTA',
      price: '10.000 so\'m',
      limit: '7 KUN',
      code: '*1*0*5#',
    ),
    INTERNETItemModel(
      title: '2.5 GB',
      type: 'HAFTA',
      price: '15.000 so\'m',
      limit: '7 KUN',
      code: '*1*0*6#',
    ),
    INTERNETItemModel(
      title: '5 GB',
      type: 'HAFTA',
      price: '20.000 so\'m',
      limit: '7 KUN',
      code: '*1*0*7#',
    ),
    // KUN
    INTERNETItemModel(
      title: '4G KUN',
      type: 'KUN',
      price: '10.000 so\'m',
      limit: '1 KUN',
      code: '*110*58#',
    ),
    INTERNETItemModel(
      title: '100 MB',
      type: 'KUN',
      price: '2.000 so\'m',
      limit: '1 KUN',
      code: '*1*0*1#',
    ),
    INTERNETItemModel(
      title: '200 MB',
      type: 'KUN',
      price: '3.000 so\'m',
      limit: '1 KUN',
      code: '*1*0*2#',
    ),
    INTERNETItemModel(
      title: '500 MB',
      type: 'KUN',
      price: '5.000 so\'m',
      limit: '1 KUN',
      code: '*1*0*3#',
    ),
    INTERNETItemModel(
      title: '4 GB',
      type: 'KUN',
      price: '10.000 so\'m',
      limit: '1 KUN',
      code: '*1*0*4#',
    ),
  ];
}
