import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:paynet_app/data/beeline/ussdData.dart';

class BeelineUSSDView extends StatefulWidget {
  const BeelineUSSDView({Key? key}) : super(key: key);

  @override
  State<BeelineUSSDView> createState() => _BeelineUSSDViewState();
}

class _BeelineUSSDViewState extends State<BeelineUSSDView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 40,
        crossAxisSpacing: 24,
        childAspectRatio: 0.75,
      ),
      // return a custom ItemCard
      itemBuilder: (context, index) => InkWell(
        onTap: () async{
        //  await BeelinePlansData.items[index].call();
        },
        child: Container(
          width: 50,
          child: Center(
            child: Text(
              'BeelinePlansData.items[index].code!.toString(),'
            ),
          ),
        ),
      ),
      itemCount:2,// BeelinePlansData.items.length,
    );
  }
}
