import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:loop_page_view/loop_page_view.dart';

class HomeView extends StatefulWidget {
  ZoomDrawerController zoomDrawerController;
  HomeView({Key? key, required this.zoomDrawerController}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  LoopPageController loopPageController = LoopPageController();
  List<String> images = [
    'beeline',
    'ums',
    'uzmobile',
    'ucell',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 104.h,
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 36.w,
            ),
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    widget.zoomDrawerController.open;
                  },
                  child: Container(
                    padding: EdgeInsets.all(
                      12.h,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/menu.svg',
                      color: Colors.blueAccent,
                      height: 40.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: LoopPageView.builder(
              controller: loopPageController,
              physics: BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (_, index) {
                return InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: (){
                    Navigator.pushNamed(context,'/${images[index]}');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                    ),
                    height: 160.h,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/' + images[index] + '.png',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 256.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              90.r,
            ),
            topRight: Radius.circular(
              90.r,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 12.r,
            )
          ],
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Easy payment to mobile',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        loopPageController.previousPage(
                          duration: Duration(
                            milliseconds: 500,
                          ),
                          curve: Curves.easeOut,
                        );
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 60,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        loopPageController.nextPage(
                          duration: Duration(
                            milliseconds: 500,
                          ),
                          curve: Curves.easeOut,
                        );
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 60,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
