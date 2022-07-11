import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/internetItemModel.dart';

class BeelineInternetData extends Data{
   List items = [
    INTERNETItemModel(
      title: '1000 MB',
      type: 'OY',
      price: '9.000 so\'m',
      limit: '30 KUN',
      code: '*147*10072*21447#',
    ),
  ];
}
