import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paynet_app/data/beeline/internetData.dart';
import 'package:paynet_app/data/beeline/minuteData.dart';
import 'package:paynet_app/data/beeline/plansData.dart';
import 'package:paynet_app/data/beeline/smsData.dart';
import 'package:paynet_app/data/beeline/ussdData.dart';
import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/data/mobiuz/internetData.dart';
import 'package:paynet_app/data/mobiuz/minuteData.dart';
import 'package:paynet_app/data/mobiuz/plansData.dart';
import 'package:paynet_app/data/mobiuz/smsData.dart';
import 'package:paynet_app/data/mobiuz/ussdData.dart';
import 'package:paynet_app/data/ucell/internetData.dart';
import 'package:paynet_app/data/ucell/minuteData.dart';
import 'package:paynet_app/data/ucell/plansData.dart';
import 'package:paynet_app/data/ucell/smsData.dart';
import 'package:paynet_app/data/ucell/ussdData.dart';
import 'package:paynet_app/data/uztelecom/internetData.dart';
import 'package:paynet_app/data/uztelecom/minuteData.dart';
import 'package:paynet_app/data/uztelecom/plansData.dart';
import 'package:paynet_app/data/uztelecom/smsData.dart';
import 'package:paynet_app/data/uztelecom/ussdData.dart';
import 'package:paynet_app/models/minuteItemModel.dart';
import 'package:paynet_app/views/children/main/daqiqaView.dart';
import 'package:paynet_app/views/children/main/internetView.dart';
import 'package:paynet_app/views/children/main/smsView.dart';
import 'package:paynet_app/views/children/main/tariflarView.dart';
import 'package:paynet_app/views/children/main/ussdView.dart';

class MainView extends StatefulWidget {
  int index;

  MainView({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int selectItem = 2;
  List<String> items = [
    'sms',
    'internet',
    'ussd',
    'tariflar',
    'daqiqa',
  ];
  late List<Widget> pages;
  late String title;
  late Color backColor;
  late Color itemColor;
  @override
  void initState() {
    title = ['Beeline', 'Mobiuz', 'Uzmobile', 'Ucell'][widget.index];

    backColor = [
      Color(0xfffedb02),
      Color(0xffe41f26),
      Color(0xff00b0ef),
      Color(0xff633493),
    ][widget.index];
    itemColor = [
      Colors.black,
      Colors.white,
      Colors.white,
      Colors.white,
    ][widget.index];
    pages = [
      SmsView(
          data: [
            BeelineSMSData(),
            MobiuzSMSData(),
            UztelecomSMSData(),
            UcellSMSData(),
          ][widget.index],
          itemColor: itemColor,
          backColor: backColor),
      InternetView(
        data: [
          BeelineInternetData(),
          MobiuzInternetData(),
          UztelecomInternetData(),
          UcellInternetData(),
        ][widget.index],
        itemColor: itemColor,
        backColor: backColor,
      ),
      UssdView(
          data: [
            BeelineUSSDData(),
            MobiuzUSSDData(),
            UztelecomUSSDData(),
            UcellUSSDData(),
          ][widget.index],
          itemColor: itemColor,
          backColor: backColor),
      TariflarView(
        data: [
          BeelinePlansData(),
          MobiuzPlansData(),
          UztelecomPlansData(),
          UcellPlansData()
        ][widget.index],
        itemColor: itemColor,
        backColor: backColor,
      ),
      DaqiqaView(
        data: [
          BeelineMinuteData(),
          MobiuzMinuteData(),
          UztelecomMinuteData(),
          UcellMinuteData(),
        ][widget.index],
        itemColor: itemColor,
        backColor: backColor,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height:1.sh,
        child: Stack(
          children: [
            Positioned(
              top: 102.h - 22.r,
              bottom: 85.h - 22.r,
              left: 0,
              right: 0,
              child: Container(
                height: 1.sh - (187.h - 44.r),
                child: pages[selectItem],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 102.h,
                decoration: BoxDecoration(
                  color: backColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 16.r,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      22.r,
                    ),
                    bottomRight: Radius.circular(
                      22.r,
                    ),
                  ),
                ),
                child: Container(
                  height: 70.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 6.h,
                            ),
                            width: 35.w,
                            height: 35.h,
                            child: SvgPicture.asset(
                              'assets/icons/back.svg',
                              color: itemColor,
                            ),
                          ),
                        ),
                        Container(
                          height: 32.h,
                          alignment: Alignment.center,
                          child: Text(
                            title,
                            style: TextStyle(
                              color: itemColor,
                              fontSize: 27.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 32.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 85.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10.h,
                      bottom: 0,
                      child: Container(
                        height: 72.h,
                        width: 1.sw,
                        decoration: BoxDecoration(
                          color: backColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 16.r,
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              22.r,
                            ),
                            topRight: Radius.circular(
                              22.r,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.w,
                        ),
                        height: 85.h,
                        width: 1.sw,
                        decoration: BoxDecoration(
                            // color: Colors.green.withOpacity(1),
                            ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(items.length, (index) {
                            if (index == selectItem) {
                              return Container(
                                margin: EdgeInsets.only(
                                  top: 4.h,
                                ),
                                width: 60.w,
                                height: 55.h,
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(
                                  14.w,
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/' + items[index] + '.svg',
                                  color: backColor,
                                  width: 48.w,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    18.r,
                                  ),
                                  color: itemColor,
                                ),
                              );
                            } else {
                              return InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  selectItem = index;
                                  setState(() {});
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: 20.h,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 3.h,
                                  ),
                                  width: 60.w,
                                  height: 55.h,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 30.h,
                                        padding: EdgeInsets.zero,
                                        child: SvgPicture.asset(
                                          'assets/icons/' + items[index] + '.svg',
                                          color: itemColor,
                                          height: 30.h,
                                        ),
                                      ),
                                      Text(
                                        items[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: itemColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
