import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paynet_app/data/data.dart';
import 'package:paynet_app/data/mobiuz/ussdData.dart';

class DaqiqaView extends StatefulWidget {
  Data data;
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
  late Data data;
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
      padding: EdgeInsets.zero,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Container(
              alignment: Alignment.center,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0.r),
                color: backColor,
              ),
              child: Text(
                "OY",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.bold,
                    color: itemColor),
              ),
            ),
            onTap: () {
              // Navigator.pushNamed(context, '/umsMinuteViewOy');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Container(
              alignment: Alignment.center,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0.r),
                color: backColor,
              ),
              child: Text(
                "GAP KO'P",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.bold,
                    color: itemColor),
              ),
            ),
            onTap: () {
              // Navigator.pushNamed(context, '/umsMinuteViewGapkop');
            },
          ),
        ),
      ],
    );
  }

}
