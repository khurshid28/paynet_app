import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UmsView extends StatefulWidget {
  const UmsView({Key? key}) : super(key: key);

  @override
  State<UmsView> createState() => _UmsViewState();
}

class _UmsViewState extends State<UmsView> {
  int selectItem = 2;
  List<String> items = [
    'sms',
    'internet',
    'ussd',
    'plans',
    'minute',
  ];
  List<Widget> pages = [
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 102.h,
                decoration: BoxDecoration(
                  color: Colors.red,
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
                            width: 32.w,
                            height: 32.h,
                            child: SvgPicture.asset(
                              'assets/icons/back.svg',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          height: 32.h,
                          alignment: Alignment.center,
                          child: Text(
                            'Mobiuz',
                            style: TextStyle(
                              color: Colors.black,
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
              Expanded(child: pages[selectItem]),
            ],
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
                        color: Colors.red,
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
                                color: Colors.red,
                                width: 48.w,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  18.r,
                                ),
                                color: Colors.black,
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
                                        color: Colors.black,
                                        height: 30.h,
                                      ),
                                    ),
                                    Text(
                                      items[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
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
    );
  }
}
