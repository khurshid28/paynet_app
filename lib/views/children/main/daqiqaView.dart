import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/data/mobiuz/ussdData.dart';
import 'package:paynet_app/models/minuteItemModel.dart';
import 'package:paynet_app/views/children/items/daqiqaItemView.dart';

class DaqiqaView extends StatefulWidget {
  MinuteData data;
  Color backColor;
  Color itemColor;
  DaqiqaView(
      {Key? key,
      required this.data,
      required this.itemColor,
      required this.backColor})
      : super(key: key);

  @override
  State<DaqiqaView> createState() => _DaqiqaViewState();
}

class _DaqiqaViewState extends State<DaqiqaView> {
  late Color backColor;
  late Color itemColor;
  late MinuteData data;
  @override
  void initState() {
    data = widget.data;
    backColor = widget.backColor;
    itemColor = widget.itemColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
       padding: EdgeInsets.only(top: 30.h,bottom: 95.h,),
      children: [
        ...List.generate(
          data.types.length,
          (index) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              child: Container(
                alignment: Alignment.center,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15.0.r),
                  color: backColor,
                ),
                child: Text(
                  data.types[index],
                  style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold,
                      color: itemColor),
                ),
              ),
              onTap: () {
                List dataList = [];
                data.items.forEach((element) {
                  if (element.type == data.types[index]) {
                    dataList.add(element);
                  }
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DaqiqaItemView(
                      data: dataList,
                      itemColor: itemColor,
                      backColor: backColor,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
