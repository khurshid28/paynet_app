import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:paynet_app/views/main/drawerView.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key,}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  LoopPageController loopPageController = LoopPageController(initialPage: 0,keepPage: true);
  List<String> images = [
    'beeline',
    'ums',
    'uzmobile',
    'ucell',
  ];

  Color colour = Colors.white;
  Color itemcolour = Colors.black;
  final GlobalKey<ScaffoldState> _key = GlobalKey(

  );

  String path='assets/images/beeline.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: colour ,
      drawer: Drawer(
        width: 280.w,
        child: DrawerView(
          backColor:itemcolour == Colors.black ? Color(0xfffedb02) :itemcolour,
          path:path,
        ),

      ),
      body: Column(
        children: [
          Container(
            height: 104.h,
            color: colour,
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
                    _key.currentState!.openDrawer();
                  },
                  child: Container(
                    padding: EdgeInsets.all(
                      12.h,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/menu.svg',
                      color: itemcolour,
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
              onPageChanged:(index){
                changeBackgroundColor(index);

              },
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
        height: 256.h,
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
                    fontSize: 32.sp,
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
                          size: 60,
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
                          size: 60,
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
  void changeBackgroundColor(int index){
    if(index == 0){
       colour = Colors.white;
       itemcolour = Colors.black;
    }else if(index == 1){
       colour = Colors.white;
       itemcolour = Color(0xffe41f26);
    }else if(index == 2){
       colour = Colors.white;
       itemcolour = Color(0xff00b0ef);
    }else if(index == 3){
       colour = Colors.white;
       itemcolour = Color(0xff633493);
    }
    path ='assets/images/' + images[index] + '.png';
    setState((){});
  }
}
