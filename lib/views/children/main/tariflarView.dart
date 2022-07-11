import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paynet_app/data/data.dart';

class TariflarView extends StatefulWidget {
  PlansData data;
  Color backColor;
  Color itemColor;
  TariflarView(
      {Key? key,
      required this.data,
      required this.itemColor,
      required this.backColor})
      : super(key: key);

  @override
  State<TariflarView> createState() => _TariflarViewState();
}

class _TariflarViewState extends State<TariflarView> {
  late Color backColor;
  late Color itemColor;
  late PlansData data;
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
                "OYLIK",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.bold,
                    color: itemColor),
              ),
            ),
            onTap: () {
              // Navigator.pushNamed(context, '/umsPlansViewOylik');
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
                "FRESH",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.bold,
                    color: itemColor),
              ),
            ),
            onTap: () {
              // Navigator.pushNamed(context, '/umsPlansViewFresh');
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
                "IMTIYOZLI",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.bold,
                    color: itemColor),
              ),
            ),
            onTap: () {
              // Navigator.pushNamed(context, '/umsPlansViewImtiyozli');
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
                "YILLIK",
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.bold,
                    color: itemColor),
              ),
            ),
            onTap: () {
              // Navigator.pushNamed(context, '/umsPlansViewYillik');
            },
          ),
        ),
      ],
    );
  }
}
