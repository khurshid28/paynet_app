import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/internetItemModel.dart';

class MobiuzInternetData extends InternetData{
  @override
    List<String> types = [
    'OYLIK',
    'KUNLIK',
    'TUNGI(OY)',
    'TUNGI DRIVE',
    'ONNET'

  ];
  @override
   List items = [
    INTERNETItemModel(
      type: 'OYLIK',
      title: '300 MB',
      price: '8.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*1*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'OYLIK',
      title: '500 MB',
      price: '9.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*7*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'OYLIK',
      title: '1000 MB',
      price: '11.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*2*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'OYLIK',
      title: '2000 MB',
      price: '17.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*5*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'OYLIK',
      title: '3000 MB',
      price: '25.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*3*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'OYLIK',
      title: '5000 MB',
      price: '33.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*4*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'OYLIK',
      title: '10000 MB',
      price: '50.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*6*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'OYLIK',
      title: '20000 MB',
      price: '55.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*8*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'OYLIK',
      title: '30000 MB',
      price: '65.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*9*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'OYLIK',
      title: '50000 MB',
      price: '75.000 so\'m',
      limit: '30 KUN',
      code: '*171*019*10*010300368*1#',
    ),
    // KUNLIKLAR
    INTERNETItemModel(
      type: 'KUNLIK',
      title: '200 MB',
      price: '2.000 so\'m',
      limit: '1 KUN',
      code: '*171*204*200*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'KUNLIK',
      title: '300 MB',
      price: '3.000 so\'m',
      limit: '1 KUN',
      code: '*171*204*300*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'KUNLIK',
      title: '500 MB',
      price: '4.000 so\'m',
      limit: '1 KUN',
      code: '*171*204*500*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'KUNLIK',
      title: '1000 MB',
      price: '5.000 so\'m',
      limit: '1 KUN',
      code: '*171*204*1000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'KUNLIK',
      title: '2000 MB',
      price: '9.000 so\'m',
      limit: '1 KUN',
      code: '*171*204*2000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'KUNLIK',
      title: '3000 MB',
      price: '12.000 so\'m',
      limit: '1 KUN',
      code: '*171*204*3000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'KUNLIK',
      title: '5000 MB',
      price: '16.500 so\'m',
      limit: '1 KUN',
      code: '*171*204*5000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'KUNLIK',
      title: '10000 MB',
      price: '25.000 so\'m',
      limit: '1 KUN',
      code: '*171*204*10000*010300368*1#',
    ),
    //  tungi(oy)
    INTERNETItemModel(
      type: 'TUNGI(OY)',
      title: '1000 MB',
      price: '5.000 so\'m',
      limit: '30 KUN',
      code: '*171*203*1000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'TUNGI(OY)',
      title: '2000 MB',
      price: '9.500 so\'m',
      limit: '30 KUN',
      code: '*171*203*2000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'TUNGI(OY)',
      title: '3000 MB',
      price: '12.500 so\'m',
      limit: '30 KUN',
      code: '*171*203*3000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'TUNGI(OY)',
      title: '5000 MB',
      price: '17.000 so\'m',
      limit: '30 KUN',
      code: '*171*203*5000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'TUNGI(OY)',
      title: '10000 MB',
      price: '22.000 so\'m',
      limit: '30 KUN',
      code: '*171*203*10000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'TUNGI(OY)',
      title: '20000 MB',
      price: '33.000 so\'m',
      limit: '30 KUN',
      code: '*171*203*20000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'TUNGI(OY)',
      title: '50000 MB',
      price: '44.000 so\'m',
      limit: '30 KUN',
      code: '*171*203*50000*010300368*1#',
    ),
    // TUNGI DRIVE 
    INTERNETItemModel(
      type: 'TUNGI DRIVE',
      title: 'Drive 1',
      price: '5.000 so\'m',
      limit: '1 KUN',
      code: '*171*200*1*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'TUNGI DRIVE',
      title: 'Drive 7',
      price: '20.000 so\'m',
      limit: '7 KUN',
      code: '*171*200*7*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'TUNGI DRIVE',
      title: 'Drive 30',
      price: '60.000 so\'m',
      limit: '30 KUN',
      code: '*171*200*30*010300368*1#',
    ),
    // ONNET
    INTERNETItemModel(
      type: 'ONNET',
      title: '300 MB',
      price: '8.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*300*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'ONNET',
      title: '500 MB',
      price: '9.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*500*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'ONNET',
      title: '1000 MB',
      price: '11.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*1000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'ONNET',
      title: '2000 MB',
      price: '17.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*2000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'ONNET',
      title: '3000 MB',
      price: '25.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*3000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'ONNET',
      title: '5000 MB',
      price: '33.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*5000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'ONNET',
      title: '10000 MB',
      price: '50.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*10000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'ONNET',
      title: '20000 MB',
      price: '55.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*20000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'ONNET',
      title: '30000 MB',
      price: '65.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*30000*010300368*1#',
    ),
    INTERNETItemModel(
      type: 'ONNET',
      title: '50000 MB',
      price: '75.000 so\'m',
      limit: '30 KUN',
      code: '*171*202*50000*010300368*1#',
    ),
  ];

}