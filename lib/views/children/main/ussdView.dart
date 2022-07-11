import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paynet_app/data/data.dart';

class UssdView extends StatefulWidget {
  UssdData data;
  Color backColor;
  Color itemColor;
  UssdView(
      {Key? key,
      required this.data,
      required this.itemColor,
      required this.backColor})
      : super(key: key);

  @override
  State<UssdView> createState() => _UssdViewState();
}

class _UssdViewState extends State<UssdView> {
  late Color backColor;
  late Color itemColor;
  late UssdData data;
  @override
  void initState() {
    data = widget.data;
    backColor = widget.backColor;
    itemColor = widget.itemColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 1.sh - 85.h +22.r,
                  child: GridView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(top: 30.h,bottom: 100.h),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // mainAxisSpacing: 40,
                      // crossAxisSpacing: 24,
                      childAspectRatio: 0.65,
                    ),
                    // return a custom ItemCard
                    children: [
                      
                      ...List.generate(data.items.length, (index) => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 5.h,
                      ),
                      child: InkWell(
                        child: Container(
                          width: 56.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2.r,
                                blurRadius: 3.r,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15.0.r),
                            color: backColor,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0.w),
                                child: Text(
                                  data.items[index].title.toString(),
                                  style: TextStyle(
                                      color: itemColor,
                                      fontSize: 16.0.sp,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Divider(
                                thickness: 1.0.h,
                              ),
                              Text(
                                data.items[index].code.toString(),
                                style: TextStyle(
                                    color: itemColor,
                                    fontSize: 24.0.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1.0.h,
                              ),
                              data.items[index].subtitle == null
                                  ? Text("")
                                  : Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        data.items[index].subtitle.toString(),
                                        style: TextStyle(
                                          color: itemColor,
                                          fontSize: 12.sp,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                contentPadding: EdgeInsets.only(left: 10.w,right: 10.w,bottom: 10.h,),
                                    title: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data.items[index].title!.toString(),
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    content: Container(
                                      height: 84.0.h,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Divider(thickness: 0.5.h,),
                                          
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  data.items[index].code!
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.sp,
                                                  )),
                                            ],
                                          ),
                                          SizedBox(height: 6.h,),
                                          //Text("Ulanishni istaysizmi?", style: TextStyle(fontSize: 16.sp),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  "BEKOR QILISH",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.transparent,
                                                    shadowColor:
                                                        Colors.transparent,
                                                    side:
                                                        BorderSide(width: 0.3)),
                                              ),
                                              SizedBox(
                                                width: 10.0.w,
                                              ),
                                              ElevatedButton(
                                                onPressed: () async {
                                                  await data.items[index]
                                                      .call();
                                                },
                                                child: Text("YUBORISH"),
                                                style: ElevatedButton.styleFrom(
                                                    onPrimary: itemColor,
                                                    primary: backColor),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ));
                      
                        },
                      ),
                    ),
                   )
                   
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
