import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paynet_app/data/beeline/ussdData.dart';

import '../../../../data/beeline/plansData.dart';

class BeelineUSSDViewPullikSMS extends StatefulWidget {
  const BeelineUSSDViewPullikSMS({Key? key}) : super(key: key);

  @override
  State<BeelineUSSDViewPullikSMS> createState() => _BeelineUSSDViewState();
}

class _BeelineUSSDViewState extends State<BeelineUSSDViewPullikSMS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 102.h,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
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
                              "PULLIK SMS'LAR",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.sp,
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

                Container(
                  height: MediaQuery.of(context).size.height.h,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // mainAxisSpacing: 40,
                      // crossAxisSpacing: 24,
                      childAspectRatio: 0.75,
                    ),
                    // return a custom ItemCard
                    itemBuilder: (context, index) => InkWell(
                      onTap: () async{
                        //  await BeelinePlansData.items[index].call();
                      },
                      child: Padding(
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
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.yellow,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 50.0,
                                    child: Text(BeelineUSSDData.items[index].title.toString(),style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                ),
                                Text(BeelineUSSDData.items[index].code.toString(),style: TextStyle(color: Colors.black, fontSize: 28.0),),
                                Divider(
                                  thickness: 1.0,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  height: 140.0,
                                  child: Text(BeelineUSSDData.items[index].subtitle.toString(),style: TextStyle(color: Colors.black, fontSize: 15.0),),
                                ),
                              ],
                            ),
                          ),
                          onTap: (){
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  title: Text(BeelineUSSDData.items[index].code!.toString()),
                                  content: Container(
                                    height: 70.0.h,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(BeelineUSSDData.items[index].title.toString()),
                                        //Text("Ulanishni istaysizmi?", style: TextStyle(fontSize: 16.sp),),
                                        Row(
                                          children: [
                                            ElevatedButton(onPressed: (){
                                              Navigator.pop(context);
                                            }, child: Text("BEKOR QILISH",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(primary: Colors.transparent,shadowColor: Colors.transparent,side: BorderSide(width: 0.3)),),
                                            SizedBox(width: 10.0.w,),
                                            ElevatedButton(onPressed: () async {
                                              await BeelineUSSDData.items[index].call();
                                            }, child: Text("YUBORISH"),style: ElevatedButton.styleFrom(onPrimary: Colors.black,primary: Colors.yellow),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            );
                          },
                        ),
                      ),
                    ),
                    itemCount: BeelineUSSDData.items.length,
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
