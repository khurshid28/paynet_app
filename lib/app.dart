import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paynet_app/views/children/beeline/beelineView.dart';
import 'package:paynet_app/views/main/homeView.dart';
import 'package:paynet_app/views/main/zoomdrawerView.dart';

import 'views/children/ucell/ucellView.dart';

class PaynetApp extends StatelessWidget {
  const PaynetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'Nunito',
          ),
          debugShowCheckedModeBanner: false,
          home: ZoomDrawerView(),
          routes: {
            '/main':(context)=>ZoomDrawerView(),
            '/beeline':(context)=>BeelineView(),
            '/ucell':(context)=>UcellView(),
             '/ums':(context)=>UcellView(),
              '/uzmobile':(context)=>UcellView(),
            

          },
        );
      },
      child: const ZoomDrawerView(),
    );
  }
}
