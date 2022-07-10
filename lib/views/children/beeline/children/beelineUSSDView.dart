import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeelineUSSDView extends StatefulWidget {
  const BeelineUSSDView({Key? key}) : super(key: key);

  @override
  State<BeelineUSSDView> createState() => _BeelineUSSDViewState();
}

class _BeelineUSSDViewState extends State<BeelineUSSDView> {
  Color backColor=Color(0xfffedb02);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.zero,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0.r),
                color: backColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call_outlined,size: 28.0.sp,),
                  Text("USSD KODLAR", style: TextStyle(fontSize: 16.0.sp),),
                ],
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, '/beelineUSSDviewKods');
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0.r),
                color: backColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.miscellaneous_services_outlined,size: 28.0.sp,),
                  Text("XIZMATLAR", style: TextStyle(fontSize: 16.0.sp),),
                ],
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, '/beelineUSSDviewXizmat');
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0.r),
                color: backColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.attach_money_outlined,size: 28.0.sp,),
                  Text("PULLIK SMS'LAR", style: TextStyle(fontSize: 16.0.sp),),
                ],
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, '/beelineUSSDviewPullikSMS');
            },
          ),
        ),
      ],
    );
  }
}
