import 'package:card_manager/constants/mvp_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpendsCard extends StatelessWidget {

  SpendsCard({
   this.value,
   this.spendName,
    this.height_factor,
    this.width_factor,
    this.icon_name,
    this.expense_type,
});

  String spendName, value, icon_name, expense_type;
  double width_factor, height_factor;
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
