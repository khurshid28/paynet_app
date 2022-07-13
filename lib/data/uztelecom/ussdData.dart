import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/ussdItemModel.dart';

class UztelecomUSSDData extends UssdData{
  @override
    List<String> types = [
    'USSD KODLAR',

  ];
  @override
   List items = [
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*100#',
      title: 'BOSHQARISH',
      subtitle: 'Xisobingizni boshqarish uchun',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*105#',
      title: 'TARIF BO\'YICHA QOLDIQ',
      subtitle: 'Tarif reja boyicha qolgan daqiqa, SMS, va trafikni korsatish',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*100*1#',
      title: 'BALANS TEKSHIRISH',
      subtitle: 'Xisobingizni boshqarish uchun ushbu kodni yuboring',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*100*2#',
      title: 'QOLDIQNI TEKSHIRISH',
      subtitle: 'Xisobingizda qolgan daqiqalar, SMSlar, hamda trafik qoldiqlarni korish',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*107#',
      title: 'HSOBNI TEKSHIRISH',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*100*3#',
      title: 'SHAXSIY KABINET PAROLI',
      subtitle: 'Shaxsiy kabinetga kirish uchun parolni olish',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*100*4#',
      title: 'MENING RAQAMIM',
      subtitle: 'Telefon raqamingizni aniqlash uchun, ushbu kodni yuboring',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*100*5#',
      title: 'MENING RAQAMLARIM',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*555#',
      title: 'RESTART XIZMATI',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*150#',
      title: 'QARZ OLISH XIZMATI',
      subtitle: 'Xizmat pullik',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*#67#',
      title: 'PEDEADRESATSIYANI TEKSHIRISH',
      subtitle: 'Pereadresatsiya xizmati holatni tekshirish uchun foydalaning',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*199#',
      title: 'BARCHA PULLIK XIZMATLARNI O\'CHIRISH',
      subtitle: 'Barcha pullik xizmatlarni bitta USSD kod yordamida o\'chiring',
    ),
  ];
}
