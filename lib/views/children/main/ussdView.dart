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
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(
                                    0, 0), // changes position of shadow
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
                                  data.items[index].title.toString(),
                                  style: TextStyle(
                                      color: itemColor, fontSize: 16.0,fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                              Text(
                                data.items[index].code.toString(),
                                style: TextStyle(
                                    color: itemColor, fontSize: 24.0,fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                              data.items[index].subtitle ==
                                        null
                                    ? Text("")
                                    : Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                          data.items[index].subtitle
                                              .toString(),
                                          style: TextStyle(
                                              color: itemColor, fontSize: 14.0,),textAlign: TextAlign.center,
                                        ),
                                    ),
                            ],
                          ),
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                    title: Text(data
                                        .items[index].code!
                                        .toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                                    content: Container(
                                      height: 70.0.h,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(data
                                              .items[index].title
                                              .toString()),
                                          //Text("Ulanishni istaysizmi?", style: TextStyle(fontSize: 16.sp),),
                                          Row(
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
                                                style:
                                                    ElevatedButton.styleFrom(
                                                        primary: Colors
                                                            .transparent,
                                                        shadowColor: Colors
                                                            .transparent,
                                                        side: BorderSide(
                                                            width: 0.3)),
                                              ),
                                              SizedBox(
                                                width: 10.0.w,
                                              ),
                                              ElevatedButton(
                                                onPressed: () async {
                                                  await data
                                                      .items[index]
                                                      .call();
                                                },
                                                child: Text("YUBORISH"),
                                                style:
                                                    ElevatedButton.styleFrom(
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
                    itemCount: data.items.length,
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
