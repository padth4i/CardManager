import 'package:card_manager/constants/card_sharing_constants.dart';
import 'package:flutter/material.dart';

class DebitCard extends StatelessWidget {
  final double heightFactor, widthFactor, textScaleFactor, balance, spentThisMonth;
  final String cardColor, orgName, accountNumber;
  const DebitCard(
      {Key key,
      this.heightFactor,
      this.widthFactor,
      this.textScaleFactor,
      this.balance,
      this.spentThisMonth,
      this.cardColor,
      this.orgName,
      this.accountNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardSharingConstants cardSharingConstants;
    MediaQueryData queryData = MediaQuery.of(context);
    cardSharingConstants = CardSharingConstants(queryData.textScaleFactor);
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/card_sharing/new_$cardColor.png',
          // 'assets/card_sharing/red.png',
          // height: 242 * heightFactor,
          width: 160 * widthFactor,
        ),
        AnimatedOpacity(
          opacity: true ? 1 : 0,
          duration: Duration(milliseconds: 150),
          child: Container(
            padding: EdgeInsets.only(left: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 13 * heightFactor),
                Text(orgName, style: cardSharingConstants.kBankNameStyle),
                SizedBox(height: 18 * heightFactor),
                Text('Current balance', style: cardSharingConstants.kBodyStyle),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: '₹',
                      style: cardSharingConstants.kRupeeStyle
                          .copyWith(fontSize: 20 / textScaleFactor)),
                  TextSpan(
                      text: balance.toInt().toString(),
                      style: cardSharingConstants.kAvailableAmountStyle)
                ])),
                SizedBox(height: 14 * heightFactor),
                Text('Spent this month', style: cardSharingConstants.kBodyStyle),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: '₹',
                      style: cardSharingConstants.kRupeeStyle
                          .copyWith(fontSize: 16 / textScaleFactor)),
                  TextSpan(
                      text: spentThisMonth.toInt().toString(),
                      style: cardSharingConstants.kSpentAmountStyle)
                ])),
                SizedBox(height: 56 * heightFactor),
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                  Text('**** **** **** ', style: cardSharingConstants.kCardNumberStyle),
                  Text('${accountNumber.substring(12, 16)}',
                      style: cardSharingConstants.kCardNumberStyle),
                ]),
                SizedBox(height: 18 * heightFactor),
                Container(
                    padding: EdgeInsets.only(left: 92),
                    child: Text('DEBIT', style: cardSharingConstants.kCardTypeStyle)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
