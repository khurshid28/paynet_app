import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/models/plansItemModel.dart';
import 'package:paynet_app/models/ussdItemModel.dart';

class UcellUSSDData extends UssdData{
  @override
    List<String> types = [
    'USSD KODLAR',
    

  ];
  @override
   List items =  [
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*100#',
      title: 'BALANS VA TARIF',
      subtitle: "Xisobingizdagi qolgna mablag va tarifingizni tekshirish",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*111#',
      title: 'USSD MENYU',
      subtitle: "Menyudan foydalanib, siz hamma malumotlarni olsangiz boladi",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*120#',
      title: 'TARIF REJASINI O\'ZGARTIRISH',
      subtitle:
          "Bor tarif rejalar ro'yxati va o'z tarif rejangizni o'zgartirish xizmati",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*900#',
      title: 'YAGONA XISOB',
      subtitle:
          "Xisobingizda qolgan mablag', qoldiq daqiqalar, megabaytlar va SMSlarni bitta SMSda olishingiz mumkin",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*102#',
      title: 'QOLDIQ DAQIQA VA SMS',
      subtitle: "Tarif rejangiz doirasida daqiqa va megabaytlar qoldig'i",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*103#',
      title: 'MB LAR QOLDIG\'I',
      subtitle: "Tarif rejangiz doirasda qolgna mb larni tekshirish",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*107#',
      title: 'MB LAR QOLDIG\'I',
      subtitle:
          "Xisobingizdagi qolgan kunlik, haftalik va oylik megabaytlarni tekshirish",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*222#',
      title: 'RESTART',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*500*1#',
      title: "4G NI SINAB KO'R",
      subtitle: "42 so'm evaziga 5000 MB bonus 4G internet trafigni oling",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*500*2#',
      title: "4G NI SINAB KO'R (TUNGI)",
      subtitle: "1000 so'm evaziga 5000 MB bonus 4G internet trafigni oling",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*515#',
      title: 'INTERNET AVANS',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*977#',
      title: "SIZGA QO'NG'IROQ QILISHDI",
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*911#',
      title: 'MOBIL AVANS',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*912#',
      title: 'MOBIL AVANS QOLDIG\'I',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*450#',
      title: 'MENING RAQAMIM',
      subtitle: "Telefon raqamni aniqlash",
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*360#',
      title: 'MENING RAQAMLARIM',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*411#',
      title: 'XARAJATLARIM',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*450#',
      title: 'MEN KIMMAN',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*311#',
      title: 'RAQAM YASHIRISH',
      subtitle: null,
    ),
   
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*220#',
      title: 'TIL TANLASH',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*987#',
      title: 'NAVBATSIZ',
      subtitle: null,
    ),
    USSDItemModel(
      type: 'USSD KODLAR',
      code: '*233#',
      title: 'BIR MARTALIK PAROL',
      subtitle:
          "Kompaniya saytida shaxsiy kabinetga kirish uchun bir martalik parol olish",
    ),
  ];
}
