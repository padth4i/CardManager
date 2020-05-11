import 'package:card_manager/big_card.dart';
import 'package:card_manager/constants/card_sharing_constants.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  final double heightFactor, widthFactor, textScaleFactor, balance, spentThisMonth;
  final String cardColor, orgName, accountNumber, accountType;
  final int index;

  const CreditCard(
      {Key key,
      this.heightFactor,
      this.widthFactor,
      this.textScaleFactor,
      this.balance,
      this.spentThisMonth,
      this.cardColor,
      this.orgName,
      this.accountNumber,
      this.accountType,
      this.index})
      : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  bool isVisible = false;
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(milliseconds: 100), () {
  //     if (mounted)
  //       setState(() {
  //         isVisible = true;
  //       });
  //     if (!mounted) return;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    CardSharingConstants cardSharingConstants;
    MediaQueryData queryData = MediaQuery.of(context);
    cardSharingConstants = CardSharingConstants(queryData.textScaleFactor);
    return
        // GestureDetector(
        // onTap: () {
        //   Navigator.push(
        //       context,
        //       PageRouteBuilder(
        //           transitionDuration: Duration(milliseconds: 400),
        //           pageBuilder: (_, __, ___) => BigCard(
        //                 accountNumber: widget.accountNumber,
        //                 balance: widget.balance,
        //                 orgName: widget.orgName,
        //                 spentThisMonth: widget.spentThisMonth,
        //                 accountType: widget.accountType,
        //                 cardImage: widget.cardColor,
        //                 cardIndex: widget.index,
        //               )));
        // },
        // child:
        Stack(
      children: <Widget>[
        SizedBox(
          width: 160 * widget.widthFactor,
          child: Image.asset(
            'assets/card_sharing/new_${widget.cardColor}.png',
          ),
        ),
        AnimatedOpacity(
          opacity: true ? 1 : 0,
          duration: Duration(milliseconds: 200),
          child: Container(
            padding: EdgeInsets.only(left: 13 * widget.widthFactor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 13 * widget.heightFactor),
                Text(widget.orgName, style: cardSharingConstants.kBankNameStyle),
                SizedBox(height: 18 * widget.heightFactor),
                Text('Available limit', style: cardSharingConstants.kBodyStyle),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: '₹',
                      style: cardSharingConstants.kRupeeStyle
                          .copyWith(fontSize: 20 / widget.textScaleFactor)),
                  TextSpan(
                      // text: mockAccounts
                      //     .list[index].balance
                      text: widget.balance.toInt().toString(),
                      style: cardSharingConstants.kAvailableAmountStyle)
                ])),
                SizedBox(height: 14 * widget.heightFactor),
                Text('Spent this month', style: cardSharingConstants.kBodyStyle),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: '₹',
                      style: cardSharingConstants.kRupeeStyle
                          .copyWith(fontSize: 16 / widget.textScaleFactor)),
                  TextSpan(
                      text: widget.spentThisMonth.toInt().toString(),
                      style: cardSharingConstants.kSpentAmountStyle)
                ])),
                SizedBox(height: 21 * widget.heightFactor),
                Container(
                  height: 18 * widget.heightFactor,
                  width: 136 * widget.widthFactor,
                  decoration: BoxDecoration(
                      color: Color(0x4dffffff), borderRadius: BorderRadius.circular(2)),
                  child: Center(
                    child:
                        Text('👆 TAP TO SEE DETAILS', style: cardSharingConstants.kDueBillButton),
                  ),
                ),
                SizedBox(height: 17 * widget.heightFactor),
                // SizedBox(height: 56 * widget.heightFactor),
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 8 * widget.heightFactor),
                    child: Text('**** **** **** ', style: cardSharingConstants.kCardNumberStyle),
                  ),
                  Text('${widget.accountNumber.substring(12, 16)}',
                      style: cardSharingConstants.kCardNumberStyle),
                ]),
                SizedBox(height: 12 * widget.heightFactor),
                Container(
                    padding: EdgeInsets.only(left: 92 * widget.widthFactor),
                    child: Text('CREDIT', style: cardSharingConstants.kCardTypeStyle)),
              ],
            ),
          ),
        ),
        // Container(
        //   height: 242 * widget.heightFactor,
        //   width: 160 * widget.widthFactor,
        //   color: Colors.green,
        // )
      ],
    );
    // );
  }
}
