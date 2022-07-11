import 'package:paynet_app/models/internetItemModel.dart';
import 'package:paynet_app/models/minuteItemModel.dart';
import 'package:paynet_app/models/plansItemModel.dart';
import 'package:paynet_app/models/smsItemModel.dart';
import 'package:paynet_app/models/ussdItemModel.dart';

abstract class Data<T> {
  List<T> items=[];
}

 class InternetData implements Data{
 
  @override
  List items = [];
}

 class MinuteData extends Data{
   @override
  List items = [];
}

 class PlansData extends Data{
   @override
  List items = [];
}

 class SmsData extends Data{
   @override
  List items = [];
}

 class UssdData extends Data{
   @override
  List items = [];
}
