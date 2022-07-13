import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerView extends StatefulWidget {
  Color backColor;
  String path;
  Color itemColor;
  String urlUser;
  DrawerView(
      {required this.backColor,
      required this.path,
      required this.itemColor,
      required this.urlUser,
      });

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  late String urlUser;
  final String phoneNumber = '+998950642827';
  @override
  void initState() {
    urlUser = widget.urlUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1.sh,
        width: 280.w,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 180.h,
              alignment: Alignment.center,
              child: Image.asset(
                widget.path,
                height: 160.h,
                width: 180.w,
              ),
            ),
            Container(
              height: 510.h,
              width: 280.w,
              decoration: BoxDecoration(
                color: widget.backColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    26.r,
                  ),
                  topRight: Radius.circular(
                    26.r,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 40.0),
                child: Column(
                  children: [
                    InkWell(
                      child: Container(
                        height: 35.0,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/call.svg',
                                height: 16.h, color: widget.itemColor,),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Biz bilan aloqa",
                                style: TextStyle(
                                    fontSize: 20.0, color: widget.itemColor)),
                          ],
                        ),
                      ),
                      onTap: call,
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    InkWell(
                      child: Container(
                        height: 35.0,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/share.svg',
                                height: 16.h, color: widget.itemColor),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Ulashish",
                                style: TextStyle(
                                    fontSize: 20.0, color: widget.itemColor)),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    InkWell(
                      child: Container(
                        height: 35.0,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/rate.svg',
                                height: 16.h, color: widget.itemColor),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Baholash",
                                style: TextStyle(
                                    fontSize: 20.0, color: widget.itemColor)),
                          ],
                        ),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  backgroundColor: widget.backColor,
                                  content: Container(
                                    height: 70.0.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Hozircha mavjud emas",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: widget.itemColor),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "ORQAGA",
                                            style: TextStyle(
                                                color: widget.itemColor),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              shadowColor: Colors.transparent,
                                              side: BorderSide(
                                                  width: 0.3,
                                                  color: widget.itemColor)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    InkWell(
                      child: Container(
                        height: 35.0,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/book.svg',
                                height: 16.h, color: widget.itemColor),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Ilova haqida",
                                style: TextStyle(
                                    fontSize: 20.0, color: widget.itemColor)),
                          ],
                        ),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  contentPadding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 10.w,
                                    bottom: 10.h,
                                  ),
                                  backgroundColor: widget.backColor,
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Ilova haqida",
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                            color: widget.itemColor),
                                      ),
                                    ],
                                  ),
                                  content: Container(
                                    height: 150.0.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Divider(
                                          thickness: 0.5.h,
                                          color: widget.itemColor,
                                        ),
                                        Text(
                                          "Mazkur ilova mobil operator mijozlariga qulaylik yaratish maqsadida ishlab chiqilgan bo'lib, sizning shaxsiy varaqangizga va raqamingizga hech qanday zararli tomoni yo'q.",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: widget.itemColor),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "ORQAGA",
                                            style: TextStyle(
                                                color: widget.itemColor),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              shadowColor: Colors.transparent,
                                              side: BorderSide(
                                                  width: 0.3,
                                                  color: widget.itemColor)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    InkWell(
                      child: Container(
                        height: 35.0,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/user.svg',
                                height: 16.h, color: widget.itemColor),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Shaxsiy kabinet",
                                style: TextStyle(
                                    fontSize: 20.0, color: widget.itemColor)),
                          ],
                        ),
                      ),
                      onTap: _launchUrlUser,
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    InkWell(
                      child: Container(
                        height: 35.0,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/smartphone.svg',
                                height: 16.h, color: widget.itemColor),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text("Bizning ilovalar",
                                style: TextStyle(
                                    fontSize: 20.0, color: widget.itemColor)),
                          ],
                        ),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  backgroundColor: widget.backColor,
                                  content: Container(
                                    height: 70.0.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Hozircha mavjud emas",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: widget.itemColor),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "ORQAGA",
                                            style: TextStyle(
                                                color: widget.itemColor),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.transparent,
                                              shadowColor: Colors.transparent,
                                              side: BorderSide(
                                                  width: 0.3,
                                                  color: widget.itemColor)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Future<void> share() async {
    await FlutterShare.share(
        title: 'OSON USSD',
        text: 'BIZ BILAN BARCHASI OSON',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Demo version',);
  }


  void call() async {
    await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  }

  void _launchUrlUser() async {
  
    if (!(await launchUrl(Uri.parse(urlUser), ))) throw 'Could not launch $urlUser';
  }
}


