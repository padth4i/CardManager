import 'dart:io';

import 'package:card_manager/constants/mvp_constants.dart';
import 'package:card_manager/data/spends_object.dart';
import 'package:card_manager/spends_list.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:card_manager/constants/card_sharing_constants.dart';
import 'package:card_manager/data/mock_data/mock_accounts.dart';
import 'package:card_manager/data/mock_data/mock_statements.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class BigCard extends StatefulWidget {
  static final String id = 'big_card';
  final String orgName, accountNumber, accountType, cardImage;
  final double balance, spentThisMonth;
  final int cardIndex;

  const BigCard(
      {Key key,
      this.orgName,
      this.accountNumber,
      this.accountType,
      this.balance,
      this.spentThisMonth,
      this.cardImage,
      this.cardIndex})
      : super(key: key);
  @override
  _BigCardState createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
  CardSharingConstants cardSharingConstants;
  double heightFactor, widthFactor;

  static final mockAccounts = MockAccounts();
  final mockStatements = MockStatements();
  // List<bool> isSelected = List(mockAccounts.list.length);
  // _CardSharingState() {
  //   isSelected.fillRange(0, mockAccounts.list.length, false);
  //   print(isSelected);
  // }

  Widget _formattedDate(DateTime date, TextStyle style) {
    return RichText(
        text: TextSpan(children: <TextSpan>[
      TextSpan(text: 'Pay by ', style: style.copyWith(color: Color(0x80ffffff))),
      TextSpan(text: Jiffy(date).format('do MMM').toString(), style: style)
    ]));
  }

  bool enlarge = false;
  MvpConstants mvpConstants;
  bool slideUp = false;
  bool dueCardTransparent = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    cardSharingConstants = CardSharingConstants(queryData.textScaleFactor);
    mvpConstants = MvpConstants(queryData.textScaleFactor);
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          heightFactor = constraints.maxHeight / 740;
          widthFactor = constraints.maxWidth / 360;
          return Scaffold(
            backgroundColor: Color(0xff171717),
            bottomSheet: Container(
              color: Color(0xff171717),
              child: SolidBottomSheet(
                minHeight: 0,
                maxHeight: (740 - 64) * heightFactor,
                draggableBody: true,
                canUserSwipe: true,
                headerBar: Container(
                  height: 72 * heightFactor,
                  decoration: BoxDecoration(
                      color: Color(0xFF1c1c1c),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                        Container(
                          height: 2 * heightFactor,
                          width: 16 * widthFactor,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.all(Radius.circular(12))),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              "Recent transactions",
                              style: mvpConstants.kBottomSheetHeaderText,
                            ),
                          ),
                        )
                      ])),
                ),
                body: SpendsList(
                  width: constraints.maxWidth,
                  physics: ScrollPhysics(),
                  spendsObject: SpendsObject(),
                  height_factor: heightFactor,
                  width_factor: widthFactor,
                ),
              ),
            ),
            body: Container(
              // padding: EdgeInsets.only(left: 20 * widthFactor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 28 * heightFactor),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 14 * widthFactor,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 26 * heightFactor),
                  Container(
                    height: 450 * heightFactor,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: <Widget>[
                        AnimatedPositioned(
                          duration: Duration(milliseconds: 1000),
                          top: slideUp ? 0 : 240,
                          child: Opacity(
                            opacity: dueCardTransparent ? 0 : 1,
                            child: Container(
                              padding: EdgeInsets.only(left: 20 * widthFactor),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/card_sharing/due_card.png',
                                    width: 320 * widthFactor,
                                  ),
                                  Container(
                                      height: 152 * heightFactor,
                                      width: 320 * widthFactor,
                                      padding: EdgeInsets.only(
                                          left: 20 * widthFactor, right: 20 * widthFactor),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 16 * heightFactor),
                                          Text(
                                            'YOU HAVE A DUE BILL  👀',
                                            style: cardSharingConstants.kDueTitleStyle,
                                          ),
                                          SizedBox(height: 17 * heightFactor),
                                          Row(
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    'Total due',
                                                    style: cardSharingConstants.kDueBodyStyle,
                                                  ),
                                                  SizedBox(height: 7 * heightFactor),
                                                  Text(
                                                    '₹69,542',
                                                    style: cardSharingConstants.kTotalDueStyle,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 40 * widthFactor),
                                              Container(
                                                width: 0.5,
                                                height: 39,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 30 * widthFactor),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    'Minimum due',
                                                    style: cardSharingConstants.kDueBodyStyle,
                                                  ),
                                                  SizedBox(height: 7 * heightFactor),
                                                  Text(
                                                    '₹8952',
                                                    style: cardSharingConstants.kMinimumDueStyle,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 20 * heightFactor),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              RichText(
                                                text: TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: 'Pay by ',
                                                        style: cardSharingConstants.kDueBodyStyle),
                                                    TextSpan(
                                                        text: '14th April',
                                                        style: cardSharingConstants.kDueDateStyle)
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Color(0xff008afc),
                                                      borderRadius:
                                                          BorderRadius.all(Radius.circular(5))),
                                                  height: 28 * heightFactor,
                                                  width: 75 * widthFactor,
                                                  child: Center(
                                                    child: Text(
                                                      'PAY',
                                                      style: cardSharingConstants.kDueBillButton,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Hero(
                          flightShuttleBuilder: (
                            BuildContext flightContext,
                            Animation<double> animation,
                            HeroFlightDirection flightDirection,
                            BuildContext fromHeroContext,
                            BuildContext toHeroContext,
                          ) {
                            final Hero toHero = toHeroContext.widget;
                            return RotationTransition(
                              turns: Tween<double>(begin: 0.25, end: 0)
                                  .animate(CurvedAnimation(curve: Curves.ease, parent: animation)),
                              child: toHero.child,
                            );
                          },
                          tag: 'card_${widget.cardIndex}',
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                slideUp = true;
                                Future.delayed(Duration(milliseconds: 990), () {
                                  setState(() {
                                    dueCardTransparent = true;
                                  });

                                  Future.delayed(Duration(milliseconds: 10), () {
                                    Navigator.pop(context);
                                  });
                                });
                              });
                            },
                            child: SizedBox(
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  RotatedBox(
                                    child: Image.asset(
                                      'assets/card_sharing/new_${widget.cardImage}.png',
                                      height: 320 * widthFactor,
                                    ),
                                    quarterTurns: 1,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 40 * widthFactor,
                                        right: 45 * widthFactor,
                                        top: 17 * heightFactor),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          '${widget.orgName}',
                                          style: cardSharingConstants.kBankNameStyle,
                                        ),
                                        SizedBox(height: 43 * heightFactor),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Available Limit',
                                                  style: cardSharingConstants.kEnlargedBodyStyle,
                                                ),
                                                Text(
                                                  '₹${widget.balance}',
                                                  style: cardSharingConstants
                                                      .kEnlargedAvailableAmountStyle,
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Spent this month',
                                                  style: cardSharingConstants.kEnlargedBodyStyle,
                                                ),
                                                Text(
                                                  '₹${widget.spentThisMonth}',
                                                  style: cardSharingConstants
                                                      .kEnlargedSpentAmountStyle,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 48 * heightFactor),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Text('**** **** **** ',
                                                      style: cardSharingConstants.kCardNumberStyle),
                                                  Text('${widget.accountNumber.substring(12, 16)}',
                                                      style: cardSharingConstants.kCardNumberStyle),
                                                ]),
                                            Text(
                                              '${widget.accountType.toUpperCase()}',
                                              style: cardSharingConstants.kCardTypeStyle,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
