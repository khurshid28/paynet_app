import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/plansItemModel.dart';
import 'package:paynet_app/models/ussdItemModel.dart';

class MobiuzUSSDData extends UssdData{
   @override
   List items =  [
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*100#',
      title: 'HISOBNI TEKSHIRISH',
      subtitle:
          'Hisobingizdagi qoldiqni ko\'rish uchun ushbu kodni yuborishingiz mumkin',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*102#',
      title: 'TRAFIK QOLDIG\'I',
      subtitle: 'Trafik qoldig\'ini tekshirish',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*102*0#',
      title: 'BONUS INTERNET QOLDIG\'I',
      subtitle: 'Bonusli internet to\'plamlarini tekshirish',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*103#',
      title: 'DAQIQALAR QOLDIG\'I',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*104#',
      title: 'SMS QOLDIG\'I',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*200#',
      title: 'TUNGI DRIVE QOLDIG\'I',
      subtitle: 'Tungi Drive xizmati MBlar qoldig\'ini tekshirish kodi',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*203#',
      title: 'TUNLIK INTERNET QOLDIG\'I',
      subtitle:
          'Tungi internet to\'plamlari xizmati doirasidagi MBlar qoldig\'ini tekshirish',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*204#',
      title: 'KUNLIK INTERNET QOLDIG\'I',
      subtitle:
          'Tungi internet to\'plamlari xizmati doirasidagi MBlar qoldig\'ini tekshirish',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*140#',
      title: 'MENING XIZMATLARIM',
      subtitle:
          'Faollashtirilgan xizmatlarni tekshirish uchun ushbu koddan foydalaning',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*150#',
      title: 'MENING RAQAMIM',
      subtitle: 'Raqamingizni aniqlash',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*151#',
      title: 'MENING RAQAMLARIM',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*166#',
      title: '"GAP KO\'P" XIZMATI',
      subtitle:
          'Tarmoq ichida cheksiz muloqot. Mobi 50 va yuqori tarif egalari uchun tekin. Qolganlarga 10.000 so\'m',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*111*32#',
      title: 'QARZ OLISH',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*111*320#',
      title: 'QARZ QOLDIG\'I',
      subtitle: 'Vada qilingan to\'lov xizmati qoldig\'ni tekshirish',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*111*015#',
      title: 'OXIRGI TO\'LOV',
      subtitle: 'XISOBDA MABLAG\' QOLMASA, QARZ OLING VA ALOQADA QOLING',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*111*025#',
      title: 'MENING XARAJATLARIM',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*111*0151#',
      title: 'PUL O\'TKAZISHNI TAQIQLASH',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*111*0061#',
      title: 'KONFERENS ALOQA',
      subtitle:
          'Bu rejim 1 vaqtda bir necha suhbatdoshlar bilan suhbat qilish imkonini beradi',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*111*027*1#',
      title: 'REKLAMANI TAQIQLASH',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*#06#',
      title: 'IMEI ANIQLASH',
      subtitle: null,
    ),
  ];
}
