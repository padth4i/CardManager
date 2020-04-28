import 'package:card_manager/constants/card_sharing_constants.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final double heightFactor,
      widthFactor,
      textScaleFactor,
      balance,
      spentThisMonth;
  final String cardColor, orgName, accountNumber;

  const CreditCard(
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
        // AnimatedPositioned(
        //     left: isSelected[index]
        //         ? 130 * widthFactor
        //         : 0,
        //     curve: Curves.easeOut,
        //     child: Container(
        //       decoration: BoxDecoration(
        //         borderRadius:
        //             BorderRadius.circular(15),
        //         color: Color(0xff27292d),
        //       ),
        //       height: 240 * heightFactor,
        //       width: 160 * widthFactor,
        //       padding: EdgeInsets.only(
        //           left: 36 * widthFactor),
        //       child: Column(
        //         crossAxisAlignment:
        //             CrossAxisAlignment.start,
        //         children: <Widget>[
        //           SizedBox(
        //               height: 16 * heightFactor),
        //           Row(
        //             children: <Widget>[
        //               Column(
        //                 children: <Widget>[
        //                   RichText(
        //                       text: TextSpan(
        //                           children: <
        //                               TextSpan>[
        //                         TextSpan(
        //                             text: '67',
        //                             style: cardSharingConstants
        //                                 .kSpentAmountStyle),
        //                         TextSpan(
        //                             text:
        //                                 ' spends',
        //                             style: cardSharingConstants
        //                                 .kSpentAmountStyle
        //                                 .copyWith(
        //                                     fontSize:
        //                                         12 / queryData.textScaleFactor))
        //                       ])),
        //                   Text('on this card',
        //                       style:
        //                           cardSharingConstants
        //                               .kBodyStyle)
        //                 ],
        //               ),
        //               SizedBox(width: 20),
        //               Container(
        //                 decoration: BoxDecoration(
        //                   borderRadius:
        //                       BorderRadius
        //                           .circular(50),
        //                   color:
        //                       Color(0x33ffffff),
        //                 ),
        //                 width: 24 * widthFactor,
        //                 height: 24 * widthFactor,
        //                 child: Icon(Icons.list,
        //                     color: Colors.white,
        //                     size: 15),
        //               ),
        //             ],
        //           ),
        //           SizedBox(
        //               height: 16 * heightFactor),
        //           Text('Total Due',
        //               style: cardSharingConstants
        //                   .kBodyStyle),
        //           RichText(
        //               text: TextSpan(
        //                   children: <TextSpan>[
        //                 TextSpan(
        //                     text: '₹',
        //                     style: cardSharingConstants
        //                         .kRupeeStyle
        //                         .copyWith(
        //                             fontSize: 20 /
        //                                 queryData
        //                                     .textScaleFactor)),
        //                 TextSpan(
        //                     text: mockStatements
        //                         .list[index]
        //                         .total_due
        //                         .toInt()
        //                         .toString(),
        //                     style: cardSharingConstants
        //                         .kAvailableAmountStyle)
        //               ])),
        //           SizedBox(
        //               height: 10 * heightFactor),
        //           Text('Minimum Due',
        //               style: cardSharingConstants
        //                   .kBodyStyle),
        //           RichText(
        //               text: TextSpan(
        //                   children: <TextSpan>[
        //                 TextSpan(
        //                     text: '₹',
        //                     style: cardSharingConstants
        //                         .kRupeeStyle
        //                         .copyWith(
        //                             fontSize: 16 /
        //                                 queryData
        //                                     .textScaleFactor)),
        //                 TextSpan(
        //                     text: mockStatements
        //                         .list[index]
        //                         .min_due
        //                         .toInt()
        //                         .toString(),
        //                     style: cardSharingConstants
        //                         .kSpentAmountStyle)
        //               ])),
        //           SizedBox(
        //               height: 11 * heightFactor),
        //           _formattedDate(
        //               mockStatements
        //                   .list[index].due_date,
        //               cardSharingConstants
        //                   .kPayByStyle),
        //           SizedBox(
        //               height: 12 * heightFactor),
        //           Container(
        //             width: 98 * widthFactor,
        //             height: 28 * heightFactor,
        //             decoration: BoxDecoration(
        //                 color: Color(0xff008afc),
        //                 borderRadius:
        //                     BorderRadius.circular(
        //                         4)),
        //             child: Center(
        //               child: Text(
        //                 'PAY NOW',
        //                 style:
        //                     cardSharingConstants
        //                         .kBodyStyle
        //                         .copyWith(
        //                             color: Colors
        //                                 .white),
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     duration:
        //         Duration(milliseconds: 500)),
        // AnimatedContainer(
        //     duration: Duration(milliseconds: 500),
        //     height: 202 * heightFactor,
        //     width: isSelected[index]
        //         ? 300 * widthFactor
        //         : 136 * widthFactor,
        //     curve: Curves.easeOut),
        Image.asset(
          'assets/card_sharing/new_$cardColor.png',
          // 'assets/card_sharing/red.png',
          // height: 242 * heightFactor,
          width: 160 * widthFactor,
          // fit: BoxFit.fitHeight
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 13 * heightFactor),
              Container(
                padding: EdgeInsets.only(left: 13),
                child: Text(
                    // mockAccounts
                    //     .list[index].org_name,
                    orgName,
                    style: cardSharingConstants.kBankNameStyle),
              ),
              SizedBox(height: 18 * heightFactor),
              Container(
                padding: EdgeInsets.only(left: 13),
                child: Text('Available limit',
                    style: cardSharingConstants.kBodyStyle),
              ),
              Container(
                padding: EdgeInsets.only(left: 13),
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: '₹',
                      style: cardSharingConstants.kRupeeStyle
                          .copyWith(fontSize: 20 / textScaleFactor)),
                  TextSpan(
                      // text: mockAccounts
                      //     .list[index].balance
                      text: balance.toInt().toString(),
                      style: cardSharingConstants.kAvailableAmountStyle)
                ])),
              ),
              SizedBox(height: 12 * heightFactor),
              Container(
                padding: EdgeInsets.only(left: 13),
                child: Text('Spent this month',
                    style: cardSharingConstants.kBodyStyle),
              ),
              Container(
                padding: EdgeInsets.only(left: 13),
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: '₹',
                      style: cardSharingConstants.kRupeeStyle
                          .copyWith(fontSize: 16 / textScaleFactor)),
                  TextSpan(
                      text: spentThisMonth.toInt().toString(),
                      style: cardSharingConstants.kSpentAmountStyle)
                ])),
              ),
              // SizedBox(height: 21 * heightFactor),
              // Container(
              //   padding: EdgeInsets.only(
              //       left: 6.5 * widthFactor),
              //   child: GestureDetector(
              //     onTap: () {
              //       setState(() {
              //         if (isSelected[index] ==
              //             null) {
              //           isSelected[index] = false;
              //           isSelected[index] =
              //               !isSelected[index];
              //         } else
              //           isSelected[index] =
              //               !isSelected[index];
              //         print(isSelected);
              //       });
              //     },
              //     child: Container(
              //       height: 18 * heightFactor,
              //       width: 136 * widthFactor,
              //       decoration: BoxDecoration(
              //           color: Color(0x4dffffff),
              //           borderRadius:
              //               BorderRadius.circular(
              //                   2)),
              //       child: Center(
              //         child: Text(
              //             '👆TAP TO SEE YOUR DUE BILL',
              //             style:
              //                 cardSharingConstants
              //                     .kDueBillButton),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 56 * heightFactor),
              Container(
                padding: EdgeInsets.only(left: 13 * widthFactor),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('**** **** **** ',
                          style: cardSharingConstants.kCardNumberStyle),
                      Text('${accountNumber.substring(12, 16)}',
                          style: cardSharingConstants.kCardNumberStyle),
                    ]),
              ),
              SizedBox(height: 18 * heightFactor),
              Container(
                  padding: EdgeInsets.only(left: 105),
                  child: Text('CREDIT',
                      style: cardSharingConstants.kCardTypeStyle)),
            ],
          ),
        ),
      ],
    );
  }
}
