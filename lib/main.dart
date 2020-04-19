import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:card_manager/constants/card_sharing_constants.dart';
import 'package:card_manager/data/mock_data/mock_accounts.dart';
import 'package:card_manager/data/mock_data/mock_statements.dart';
import 'package:zoomable_tilt_view/zoomable_tilt_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardSharing(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CardSharing extends StatefulWidget {
  static final String id = 'card_sharing';
  CardSharing({Key key}) : super(key: key);

  @override
  _CardSharingState createState() => _CardSharingState();
}

class _CardSharingState extends State<CardSharing> {
  CardSharingConstants cardSharingConstants;
  double heightFactor, widthFactor;
  List<String> cardImages = [
    'blue',
    'purple',
    'red',
    'green',
    'brown',
    'dark_blue',
    'light_blue',
    'yellow'
  ];
  static final mockAccounts = MockAccounts();
  final mockStatements = MockStatements();
  List<bool> isSelected = List(mockAccounts.list.length);
  _CardSharingState() {
    print('big test');
    isSelected.fillRange(0, mockAccounts.list.length, false);
    print(isSelected);
  }

  Widget _formattedDate(DateTime date, TextStyle style) {
    return RichText(
        text: TextSpan(children: <TextSpan>[
      TextSpan(
          text: 'Pay by ', style: style.copyWith(color: Color(0x80ffffff))),
      TextSpan(text: Jiffy(date).format('do MMM').toString(), style: style)
    ]));
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    cardSharingConstants = CardSharingConstants(queryData.textScaleFactor);
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          heightFactor = constraints.maxHeight / 740;
          widthFactor = constraints.maxWidth / 360;
          return Scaffold(
            backgroundColor: Color(0xff171717),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 25 * heightFactor),
                Center(
                  child: Text('My Cards',
                      style: cardSharingConstants.kHeadingStyle),
                ),
                SizedBox(height: 25 * heightFactor),
                SizedBox(
                  height: 202 * heightFactor,
                  child: ListView.builder(
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: mockAccounts.list.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(
                              left: index == 0 ? 16 * widthFactor : 0,
                              right: 9.0 * widthFactor),
                          child: mockAccounts.list[index].account_type ==
                                  'credit'
                              ? Stack(
                                  children: <Widget>[
                                    AnimatedPositioned(
                                        left: isSelected[index]
                                            ? 115 * widthFactor
                                            : 0,
                                        curve: Curves.easeOut,
                                        child: ZoomableTiltView(
                                          yTiltLimit: 50,
                                          xTiltLimit: 50,
                                          tiltSensitivity: 1.5,
                                          zoomLimit: 1.8,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: Color(0xff27292d),
                                            ),
                                            height: 151,
                                            width: 136 * widthFactor,
                                            padding: EdgeInsets.only(
                                                left: 31 * widthFactor),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                SizedBox(
                                                    height: 16 * heightFactor),
                                                Text('Total Due',
                                                    style: cardSharingConstants
                                                        .kBodyStyle),
                                                RichText(
                                                    text: TextSpan(
                                                        children: <TextSpan>[
                                                      TextSpan(
                                                          text: '₹',
                                                          style: cardSharingConstants
                                                              .kRupeeStyle
                                                              .copyWith(
                                                                  fontSize: 20 /
                                                                      queryData
                                                                          .textScaleFactor)),
                                                      TextSpan(
                                                          text: mockStatements
                                                              .list[index]
                                                              .total_due
                                                              .toInt()
                                                              .toString(),
                                                          style: cardSharingConstants
                                                              .kAvailableAmountStyle)
                                                    ])),
                                                SizedBox(
                                                    height: 12 * heightFactor),
                                                Text('Minimum Due',
                                                    style: cardSharingConstants
                                                        .kBodyStyle),
                                                RichText(
                                                    text: TextSpan(
                                                        children: <TextSpan>[
                                                      TextSpan(
                                                          text: '₹',
                                                          style: cardSharingConstants
                                                              .kRupeeStyle
                                                              .copyWith(
                                                                  fontSize: 16 /
                                                                      queryData
                                                                          .textScaleFactor)),
                                                      TextSpan(
                                                          text: mockStatements
                                                              .list[index]
                                                              .min_due
                                                              .toInt()
                                                              .toString(),
                                                          style: cardSharingConstants
                                                              .kSpentAmountStyle)
                                                    ])),
                                                SizedBox(
                                                    height: 16 * heightFactor),
                                                _formattedDate(
                                                    mockStatements
                                                        .list[index].due_date,
                                                    cardSharingConstants
                                                        .kPayByStyle),
                                                // SizedBox(
                                                //     height: 12 * heightFactor),
                                                // Container(
                                                //   width: 98 * widthFactor,
                                                //   height: 28 * heightFactor,
                                                //   decoration: BoxDecoration(
                                                //       color: Color(0xff008afc),
                                                //       borderRadius:
                                                //           BorderRadius.circular(
                                                //               4)),
                                                //   child: Center(
                                                //     child: Text(
                                                //       'PAY NOW',
                                                //       style:
                                                //           cardSharingConstants
                                                //               .kBodyStyle
                                                //               .copyWith(
                                                //                   color: Colors
                                                //                       .white),
                                                //     ),
                                                //   ),
                                                // )
                                              ],
                                            ),
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 500)),
                                    AnimatedContainer(
                                        duration: Duration(milliseconds: 500),
                                        height: 202 * heightFactor,
                                        width: isSelected[index]
                                            ? 250 * widthFactor
                                            : 136 * widthFactor,
                                        curve: Curves.easeOut),
                                    Image.asset(
                                        'assets/card_sharing/${cardImages[index % 8]}.png',
                                        height: 202 * heightFactor),
                                    Container(
                                      padding: EdgeInsets.only(left: 13),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 16 * heightFactor),
                                          Text('Available limit',
                                              style: cardSharingConstants
                                                  .kBodyStyle),
                                          RichText(
                                              text:
                                                  TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: '₹',
                                                style: cardSharingConstants
                                                    .kRupeeStyle
                                                    .copyWith(
                                                        fontSize: 20 /
                                                            queryData
                                                                .textScaleFactor)),
                                            TextSpan(
                                                text: mockAccounts
                                                    .list[index].balance
                                                    .toInt()
                                                    .toString(),
                                                style: cardSharingConstants
                                                    .kAvailableAmountStyle)
                                          ])),
                                          SizedBox(height: 12 * heightFactor),
                                          Text('Spent this month',
                                              style: cardSharingConstants
                                                  .kBodyStyle),
                                          RichText(
                                              text:
                                                  TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: '₹',
                                                style: cardSharingConstants
                                                    .kRupeeStyle
                                                    .copyWith(
                                                        fontSize: 16 /
                                                            queryData
                                                                .textScaleFactor)),
                                            TextSpan(
                                                text: mockAccounts.list[index]
                                                    .spent_this_month
                                                    .toInt()
                                                    .toString(),
                                                style: cardSharingConstants
                                                    .kSpentAmountStyle)
                                          ])),
                                          SizedBox(height: 13.5 * heightFactor),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (isSelected[index] == null) {
                                                  isSelected[index] = false;
                                                  isSelected[index] =
                                                      !isSelected[index];
                                                } else
                                                  isSelected[index] =
                                                      !isSelected[index];
                                                print(isSelected);
                                              });
                                            },
                                            child: Container(
                                              height: 13 * heightFactor,
                                              width: 101 * widthFactor,
                                              decoration: BoxDecoration(
                                                  color: Color(0x4dffffff),
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              child: Center(
                                                child: Text(
                                                    '🙌️ YOU HAVE A DUE BILL',
                                                    style: cardSharingConstants
                                                        .kDueBillButton),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 15 * heightFactor),
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Text('**** **** **** ',
                                                    style: cardSharingConstants
                                                        .kCardNumberStyle),
                                                Text(
                                                    '${mockAccounts.list[index].account_number.substring(12, 16)}',
                                                    style: cardSharingConstants
                                                        .kCardNumberStyle),
                                              ]),
                                          SizedBox(height: 14 * heightFactor),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                  mockAccounts
                                                      .list[index].org_name,
                                                  style: cardSharingConstants
                                                      .kBankNameStyle),
                                              SizedBox(width: 54 * widthFactor),
                                              Text('CREDIT',
                                                  style: cardSharingConstants
                                                      .kCardTypeStyle),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Stack(
                                  children: <Widget>[
                                    Image.asset(
                                        'assets/card_sharing/${cardImages[index % 8]}.png',
                                        height: 202 * heightFactor),
                                    Container(
                                      padding: EdgeInsets.only(left: 13),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(height: 16 * heightFactor),
                                          Text('Current Balance',
                                              style: cardSharingConstants
                                                  .kBodyStyle),
                                          RichText(
                                              text:
                                                  TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: '₹',
                                                style: cardSharingConstants
                                                    .kRupeeStyle
                                                    .copyWith(
                                                        fontSize: 20 /
                                                            queryData
                                                                .textScaleFactor)),
                                            TextSpan(
                                                text: mockAccounts
                                                    .list[index].balance
                                                    .toInt()
                                                    .toString(),
                                                style: cardSharingConstants
                                                    .kAvailableAmountStyle)
                                          ])),
                                          SizedBox(height: 12 * heightFactor),
                                          Text('Spent this month',
                                              style: cardSharingConstants
                                                  .kBodyStyle),
                                          RichText(
                                              text:
                                                  TextSpan(children: <TextSpan>[
                                            TextSpan(
                                                text: '₹',
                                                style: cardSharingConstants
                                                    .kRupeeStyle
                                                    .copyWith(
                                                        fontSize: 16 /
                                                            queryData
                                                                .textScaleFactor)),
                                            TextSpan(
                                                text: mockAccounts.list[index]
                                                    .spent_this_month
                                                    .toInt()
                                                    .toString(),
                                                style: cardSharingConstants
                                                    .kSpentAmountStyle)
                                          ])),
                                          SizedBox(height: 41.5 * heightFactor),
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Text('**** **** **** ',
                                                    style: cardSharingConstants
                                                        .kCardNumberStyle),
                                                Text(
                                                    '${mockAccounts.list[index].account_number.substring(12, 16)}',
                                                    style: cardSharingConstants
                                                        .kCardNumberStyle),
                                              ]),
                                          SizedBox(height: 14 * heightFactor),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                  mockAccounts
                                                      .list[index].org_name,
                                                  style: cardSharingConstants
                                                      .kBankNameStyle),
                                              SizedBox(width: 54 * widthFactor),
                                              Text('DEBIT',
                                                  style: cardSharingConstants
                                                      .kCardTypeStyle),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                    },
                  ),
                ),
                // SizedBox(height: 40,),
                // Row(
                //   children: <Widget>[
                //     SizedBox(
                //       width: 16 * widthFactor,
                //     ),
                //     ZoomableTiltView(
                //       yTiltLimit: 20,
                //       xTiltLimit: 20,
                //       tiltSensitivity: 1.5,
                //       zoomLimit: 1,
                //       child: Container(
                //         height: 202 * heightFactor,
                //         width: 144 * widthFactor,
                //         child: Image.asset('assets/card_sharing/red.png'),
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          );
        },
      ),
    );
  }
}
