import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:paynet_app/views/children/mainView.dart';
import 'package:paynet_app/views/main/drawerView.dart';

class HomeView extends StatefulWidget {
  HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  LoopPageController loopPageController =
      LoopPageController(initialPage: 0, keepPage: true);
  List<String> images = [
    'beeline',
    'ums',
    'uzmobile',
    'ucell',
  ];

  List<String> urlUser = [
    'https://beeline.uz/uz/signin/',
    'https://ip.mobi.uz/selfcare/',
    'https://cabinet.uztelecom.uz/',
    'https://my.ucell.uz/Account/Login/',
  ];

  Color colour = Colors.white;
  Color itemcolour = Colors.black;
  Color itemcolor = Colors.black;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  String path = 'assets/images/beeline.png';
  String urlString = 'https://beeline.uz/uz/signin/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: colour,
      drawer: Drawer(
        width: 280.w,
        child: DrawerView(
          backColor:
              itemcolour == Colors.black ? Color(0xfffedb02) : itemcolour,
          path: path,
          itemColor: itemcolor == Color(0xfffedb02) ? Colors.black : itemcolor,
          urlUser: urlString,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 104.h,
            color: colour,
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    _key.currentState!.openDrawer();
                  },
                  child: Container(
                    padding: EdgeInsets.all(
                      12.h,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/menu.svg',
                      color: itemcolour,
                      height: 30.h,
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
              onPageChanged: (index) {
                changeBackgroundColor(index);
              },
              itemBuilder: (_, index) {
                return InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainView(index: index),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 55.w,
                    ),
                    height: 150.h,
                    alignment: Alignment.center,
                    child: Image.asset(
                      path,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 230.h,
        decoration: BoxDecoration(
          color: colour,
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
                  'Biz bilan barchasi oson ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                    color: itemcolour,
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
                          size: 35,
                          color: itemcolour,
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
                          size: 35,
                          color: itemcolour,
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

  void changeBackgroundColor(int index) {
    if (index == 0) {
      colour = Colors.white;
      itemcolour = Colors.black;
      itemcolor = Colors.black;
    } else if (index == 1) {
      colour = Colors.white;
      itemcolour = Color(0xffe41f26);
      itemcolor = Colors.white;
    } else if (index == 2) {
      colour = Colors.white;
      itemcolour = Color(0xff00b0ef);
      itemcolor = Colors.white;
    } else if (index == 3) {
      colour = Colors.white;
      itemcolour = Color(0xff633493);
      itemcolor = Colors.white;
    }
    path = 'assets/images/' + images[index] + '.png';
    urlString = urlUser[index];
    setState(() {});
  }
}
