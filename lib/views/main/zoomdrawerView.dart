import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:paynet_app/views/main/drawerView.dart';
import 'package:paynet_app/views/main/homeView.dart';

class ZoomDrawerView extends StatefulWidget {
  const ZoomDrawerView({Key? key}) : super(key: key);

  @override
  State<ZoomDrawerView> createState() => _ZoomDrawerViewState();
}

class _ZoomDrawerViewState extends State<ZoomDrawerView> {
   ZoomDrawerController z = ZoomDrawerController();
  @override
  void dispose() {
    z.close;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 24.r,
      style: DrawerStyle.style1,
      showShadow: true,
      openCurve: Curves.fastOutSlowIn,
      slideWidth:210.w,
      duration: const Duration(milliseconds: 500),
      angle: - pi/3,
      mainScreen:  HomeView(zoomDrawerController: z,),
      menuScreen: DrawerView(zoomDrawerController: z,),

    );
  }
}
