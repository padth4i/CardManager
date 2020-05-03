import 'package:card_manager/constants/mvp_constants.dart';
import 'package:card_manager/data/spends_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpendsList extends StatelessWidget {
  SpendsList({
    Key key,
    @required this.width,
    @required this.spendsObject,
    @required this.physics,
    @required this.height_factor,
    @required this.width_factor,
  });
  final double width;
  final ScrollPhysics physics;
  final SpendsObject spendsObject;
  final double height_factor, width_factor;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    debugPrint("Size of spendsObject${spendsObject.amount.length}");
    return Container(
      color: Color(0xFF1c1c1c),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Total ₹${spendsObject.total_spends} spent',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18 * height_factor,
          ),
          Expanded(
            child: ListView.builder(
              physics: physics,
              //shrinkWrap: true,
              itemCount: spendsObject.amount.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    SpendsCard(
                      value: spendsObject.amount[index] < 0
                          ? (-1 * spendsObject.amount[index]).toString()
                          : spendsObject.amount[index].toString(),
                      width: width - 10,
                      spendName: spendsObject.tags[index],
                      height_factor: height_factor,
                      width_factor: width_factor,
                      icon_name: spendsObject.category[index],
                      expense_type: spendsObject.expense_type[index],
                    ),
                    Container(
                      height: 5,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SpendsCard extends StatelessWidget {

  SpendsCard({
   this.value,
   this.spendName,
    this.width,
    this.height_factor,
    this.width_factor,
    this.icon_name,
    this.expense_type,
});

  String spendName, value, icon_name, expense_type;
  double width, width_factor, height_factor;
  MvpConstants mvpConstants;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    mvpConstants = MvpConstants(queryData.textScaleFactor);
    return Container(
      height: 61*height_factor,
      width: 328*width_factor,
      decoration: BoxDecoration(
          color: Color(0xFF27292d),
          borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 8*width_factor, bottom: 10*height_factor,),
                  child: Container(
                    height: 40*height_factor,
                    width: 40*width_factor,
                    child: SvgPicture.asset(
                      'assets/expense_category_icons/$icon_name.svg',
                      semanticsLabel: 'idea',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 11*width_factor, bottom: 6*height_factor,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        spendName,
                        style: mvpConstants.spendCardName,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "Today, 11:43AM",
                          style: mvpConstants.spendCardDate,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only( bottom: 33*height_factor, right: 8*width_factor),
              child: Text(
                "₹$value",
                style: expense_type == "debit" ? mvpConstants.spendCardAmountNegativeAmount:mvpConstants.spendCardAmountPositiveAmount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
