import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/plansItemModel.dart';
import 'package:paynet_app/models/ussdItemModel.dart';

class BeelineUSSDData implements UssdData{
  @override
   List items =  [
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*102#',
      title: 'HISOBNI TEKSHIRISH',
      subtitle:
          'Hisobingizdagi qoldiqni ko\'rish uchun ushbu kodni yuborishingiz mumkin',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*101#',
      title: "MB QOLDIG'I(IJT.TARM)",
      subtitle:
          "Ijtimoiy tarmoqlar uchun berilgan trafik qoldig'ini tekshirish",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*103#',
      title: "MB QOLDIG'I",
      subtitle:
          "Sotib olingan internet trafik, hamda bonus trafik qoldiqlarini ko'rish",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*109#',
      title: "MB QOLDIG'I(TAS-IX)",
      subtitle:
          "Tas-ix tarmog'i ichida ishlatish uchun internet trafik, hamda bonus trafik qoldiqlarini ko'rish",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: null,
      title: 'EXSPRESS-TO\'LOV',
      subtitle: "Ekspress-to'lov kartalari orqali xisobingizni to'ldirish",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*105#',
      title: "SMS QOLDIG'I",
      subtitle: 'Hisobingizdagi qolgan bepul SMSlar haqida malumot',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*106#',
      title: "DAQIQALAR QOLDIG'I",
      subtitle: 'Hisobingizdagi qolgan bepul daqiqalar haqida malumot',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*148#',
      title: 'RAQAMNI ANIQLASH',
      subtitle: 'Raqamingizni aniqlash',
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*110*00#',
      title: 'DOLLAR KURSI',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*110*05#',
      title: 'TARIF REJAM',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*110*09#',
      title: "QO'SHIMCHA XIZMATLAR",
      subtitle: "Yoqilgan qo'shimcha xizmatlar ro'yxatini ko'rish",
    ),
    USSDItemModel(
        type: 'USSD KODLAR',
        code: '*303#',
        title: 'MENING RAQAMLARIM',
        subtitle:
            "Pasportingizga ro'yxatdan o'tgan barcha telefon raqamlar ro'yxati"),
  ];
}
