import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/data/mobiuz/plansData.dart';
import 'package:paynet_app/data/mobiuz/smsData.dart';
import 'package:paynet_app/models/minuteItemModel.dart';

class DaqiqaItemView extends StatefulWidget {
  List data;
  Color backColor;
  Color itemColor;
  DaqiqaItemView(
      {Key? key,
      required this.data,
      required this.itemColor,
      required this.backColor})
      : super(key: key);

  @override
  State<DaqiqaItemView> createState() => _DaqiqaItemViewState();
}

class _DaqiqaItemViewState extends State<DaqiqaItemView> {
  late Color backColor;
  late Color itemColor;
  late List data;
  @override
  void initState() {
    data = widget.data;
    backColor = widget.backColor;
    itemColor = widget.itemColor;
    print(data[0].type);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: (102.h - 22.r),
            child: Container(
              height: 1.sh - (102.h - 22.r),
              width: 1.sw,
              child:  GridView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.symmetric(vertical: 30.h,),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // mainAxisSpacing: 40,
                      // crossAxisSpacing: 24,
                      childAspectRatio: 0.75,
                    ),
                    // return a custom ItemCard
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        child: Container(
                          width: 50.w,
                          padding: EdgeInsets.symmetric(horizontal: 5.w,),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                            color: backColor,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  data[index].title!,
                                  style: TextStyle(
                                      color: itemColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Narxi: ",
                                      style: TextStyle(
                                          color: itemColor, fontSize: 16.0),
                                    ),
                                    Text(
                                      data[index].price.toString(),
                                      style: TextStyle(
                                          color: itemColor,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Limiti: ",
                                      style: TextStyle(
                                          color: itemColor, fontSize: 16.0),
                                    ),
                                    Text(
                                      data[index].limit,
                                      style: TextStyle(
                                          color: itemColor,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                           
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Kodi: ",
                                      style: TextStyle(
                                          color: itemColor, fontSize: 16.0),
                                    ),
                                    Container(
                                      width: 70.w,
                                      child: Text(
                                        
                                        data[index].code,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: itemColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
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
                                          data[index].title!.toString(),
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
                                                  data[index].code!
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
                                                  await data[index]
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
                    itemCount: data.length,
                  ),
                

              
           
            ),
          ),
        
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 102.h,
              decoration: BoxDecoration(
                color: backColor,
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
                            color: itemColor,
                          ),
                        ),
                      ),
                      Container(
                        height: 32.h,
                        alignment: Alignment.center,
                        child: Text(
                          data[0].type!,
                          style: TextStyle(
                            color: itemColor,
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
          ),
        ],
      ),
    );
  }


}

