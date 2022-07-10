import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerView extends StatefulWidget {
  Color backColor;
  String path;
  DrawerView({required this.backColor,required this.path});
  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
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
            child: Image.asset(widget.path,height: 160.h,width: 180.w,),
          ),
          Container(
            height: 510.h,
            width: 280.w,
            decoration: BoxDecoration(
              color: widget.backColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(26.r,),topRight: Radius.circular(26.r,),),
              
            ),
          ),
        ],
      )
    );
  }
}
