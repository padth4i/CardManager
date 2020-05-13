import 'dart:io';
import 'dart:math';

import 'package:card_manager/bloc/card_bloc.dart';
import 'package:card_manager/bottom_sheet.dart' as bottomSheet;
import 'package:card_manager/constants/mvp_constants.dart';
import 'package:card_manager/data/spends_object.dart';
import 'package:card_manager/spends_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  final List<SpendsObject> spends;

  const BigCard(
      {Key key,
      this.orgName,
      this.accountNumber,
      this.accountType,
      this.balance,
      this.spentThisMonth,
      this.cardImage,
      this.cardIndex,
      this.spends})
      : super(key: key);
  @override
  _BigCardState createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
  CardSharingConstants cardSharingConstants;
  double heightFactor, widthFactor;
  bool isVisible = false;

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
  bool slideUp = true;
  bool dueCardTransparent = true;
  bool enlargedTextTransparent = true;
  double sheetMaxHeight, sheetMinHeight = 0;
  SolidController solidController = SolidController();
  ScrollPhysics physics = NeverScrollableScrollPhysics();

  @override
  void initState() {
    super.initState();
    sheetMaxHeight = widget.accountType == 'debit' ? 450 : 250;
    setState(() {
      slideUp = false;
      Future.delayed(Duration(milliseconds: 800), () {
        enlargedTextTransparent = false;
        dueCardTransparent = false;
        solidController.show();
        Future.delayed(Duration(milliseconds: 50), () {
          setState(() {
            sheetMinHeight = widget.accountType == 'debit' ? 450 : 250;
            solidController.hide();
            sheetMaxHeight = 740;
          });
        });
      });
    });
  }

  Future<bool> _onReturn() {
    Future.delayed((Duration(milliseconds: 200)), () {
      setState(() {
        slideUp = true;
        if (solidController.isOpened)
          sheetMaxHeight = widget.accountType == 'debit' ? 450 : 250;
        else
          sheetMaxHeight = 250;
        solidController.show();
        sheetMinHeight = 0;
        solidController.hide();
        Future.delayed(Duration(milliseconds: 300), () {
          setState(() {
            dueCardTransparent = true;
          });
        }).then((onValue) {
          Future.delayed(Duration(milliseconds: 50), () {
            isVisible = true;
            Navigator.pop(context);
          });
        });
      });
    });
    return Future.delayed(Duration(milliseconds: 0));
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    cardSharingConstants = CardSharingConstants(queryData.textScaleFactor);
    mvpConstants = MvpConstants(queryData.textScaleFactor);

    // List<SpendsObject> newSpends = List();
    // for (int i=0; i<3; i++) {
    //   for (int j=0; j< widget.spends[i].amount.length; j++) {
    //     if (widget.spends[i].accountNumber[j] == widget.accountNumber)
    //       newSpends.add(widget.spends[i]);
    //   }
    // }
    print('bruh ${widget.spends[0].amount[0]}');
    return WillPopScope(
      onWillPop: _onReturn,
      child: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            heightFactor = constraints.maxHeight / 740;
            widthFactor = constraints.maxWidth / 360;
            print(heightFactor);
            print(widthFactor);
            return Scaffold(
              backgroundColor: Color(0xff171717),
              bottomSheet: BlocBuilder<CardBloc, CardState>(
                builder: (context, state) {
                  if (state is ChangedScrollPhysicsToShown)
                    return bottomSheet.BottomSheet(
                      heightFactor: heightFactor,
                      widthFactor: widthFactor,
                      physics: ScrollPhysics(),
                      sheetMaxHeight: sheetMaxHeight,
                      sheetMinHeight: sheetMinHeight,
                      solidController: solidController,
                      spends: widget.spends,
                    );
                  if (state is ChangedScrollPhysicsToHidden)
                    return bottomSheet.BottomSheet(
                      heightFactor: heightFactor,
                      widthFactor: widthFactor,
                      physics: NeverScrollableScrollPhysics(),
                      sheetMaxHeight: sheetMaxHeight,
                      sheetMinHeight: sheetMinHeight,
                      solidController: solidController,
                      spends: widget.spends,
                    );
                  //     return Container(
                  //   color: Color(0xff171717),
                  //   child: bottomSheet.SolidBottomSheet(
                  //     // minHeight:  ? 0 : 240 * heightFactor,
                  //     // minHeight: 0,
                  //     // maxHeight:  ? 240 * heightFactor : 740 * heightFactor,
                  //     // maxHeight: 740 * heightFactor,
                  //     minHeight: sheetMinHeight * heightFactor,
                  //     maxHeight: sheetMaxHeight * heightFactor,
                  //     smoothness: Smoothness.high,
                  //     draggableBody: true,
                  //     controller: solidController,
                  //     canUserSwipe: true,
                  //     headerBar: Container(
                  //       color: Colors.transparent,
                  //     ),
                  //     onHide: () {
                  //       print('hide');
                  //       ChangeScrollPhysicsToHidden event = ChangeScrollPhysicsToHidden(NeverScrollableScrollPhysics());
                  //       blocInstance.add(event);
                  //     },
                  //     onShow: () {
                  //       print('show');
                  //       ChangeScrollPhysicsToShow event = ChangeScrollPhysicsToShow(ScrollPhysics());
                  //       blocInstance.add(event);
                  //     },
                  //     body: Container(
                  //       color: Color(0xFF1f2023),
                  //       child: Column(
                  //         children: <Widget>[
                  //           Container(
                  //             color: Color(0xFF171717),
                  //             child: Container(
                  //               height: 72 * heightFactor,
                  //               decoration: BoxDecoration(
                  //                   color: Color(0xFF1f2023),
                  //                   borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(14), topRight: Radius.circular(14))),
                  //               child: Center(
                  //                   child: Column(
                  //                       crossAxisAlignment: CrossAxisAlignment.center,
                  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //                       children: <Widget>[
                  //                     Container(
                  //                       height: 2 * heightFactor,
                  //                       width: 16 * widthFactor,
                  //                       decoration: BoxDecoration(
                  //                           color: Colors.white.withOpacity(0.2),
                  //                           borderRadius: BorderRadius.all(Radius.circular(12))),
                  //                     ),
                  //                     Container(
                  //                       child: Center(
                  //                         child: Text(
                  //                           "Recent transactions",
                  //                           style: mvpConstants.kBottomSheetHeaderText,
                  //                         ),
                  //                       ),
                  //                     )
                  //                   ])),
                  //             ),
                  //           ),
                  //           Expanded(
                  //             child: ListView(
                  //               physics: state.physics,
                  //               children: <Widget>[
                  //                 Container(
                  //                   height: (widget.spends[0].amount.length +
                  //                           widget.spends[0].amount.length / 6 +
                  //                           (widget.spends[0].amount.length / 12).floor() +
                  //                           1.3) *
                  //                       61 *
                  //                       heightFactor,
                  //                   width: 342 * widthFactor,
                  //                   decoration: BoxDecoration(
                  //                       color: Color(0xFF1f2023),
                  //                       border: Border.all(width: 2, color: Color(0x0cffffff)),
                  //                       borderRadius: BorderRadius.all(Radius.circular(8))),
                  //                   child: Column(
                  //                     children: <Widget>[
                  //                       SizedBox(
                  //                         height: 24 * heightFactor,
                  //                       ),
                  //                       Container(
                  //                         padding: EdgeInsets.only(
                  //                             left: 24 * widthFactor, right: 24 * widthFactor),
                  //                         child: Row(
                  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                           children: <Widget>[
                  //                             Text('Spends done in May',
                  //                                 style: cardSharingConstants.kBottomSheetDate),
                  //                             Text('₹${widget.spends[0].total_spends}',
                  //                                 style: cardSharingConstants.kBottomSheetValue),
                  //                           ],
                  //                         ),
                  //                       ),
                  //                       SizedBox(
                  //                         height: 20 * heightFactor,
                  //                       ),
                  //                       Expanded(
                  //                         child: Container(
                  //                           decoration: BoxDecoration(
                  //                               color: Color(0xFF1f2023),
                  //                               borderRadius: BorderRadius.only(
                  //                                   bottomLeft: Radius.circular(8),
                  //                                   bottomRight: Radius.circular(8))),
                  //                           child: ListView.builder(
                  //                             itemCount: widget.spends[0].amount.length,
                  //                             primary: false,
                  //                             physics: NeverScrollableScrollPhysics(),
                  //                             itemBuilder: (context, innerIndex) {
                  //                               return Padding(
                  //                                 padding:
                  //                                     EdgeInsets.only(bottom: 12, left: 14, right: 14),
                  //                                 child: SpendsCard(
                  //                                   expense_type:
                  //                                       widget.spends[0].expense_type[innerIndex],
                  //                                   height_factor: heightFactor,
                  //                                   icon_name: widget.spends[0].category[innerIndex],
                  //                                   spendName: widget.spends[0].tags[innerIndex],
                  //                                   value: widget.spends[0].amount[0].toString(),
                  //                                   width_factor: widthFactor,
                  //                                 ),
                  //                               );
                  //                             },
                  //                           ),
                  //                         ),
                  //                       )
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 10 * heightFactor),
                  //                 Container(
                  //                   height: (widget.spends[1].amount.length +
                  //                           widget.spends[1].amount.length / 6 +
                  //                           (widget.spends[1].amount.length / 12).floor() +
                  //                           1.3) *
                  //                       61 *
                  //                       heightFactor,
                  //                   width: 342 * widthFactor,
                  //                   decoration: BoxDecoration(
                  //                       color: Color(0xFF1f2023),
                  //                       border: Border.all(width: 2, color: Color(0x0cffffff)),
                  //                       borderRadius: BorderRadius.all(Radius.circular(8))),
                  //                   child: Column(
                  //                     children: <Widget>[
                  //                       SizedBox(
                  //                         height: 24 * heightFactor,
                  //                       ),
                  //                       Container(
                  //                         padding: EdgeInsets.only(
                  //                             left: 24 * widthFactor, right: 24 * widthFactor),
                  //                         child: Row(
                  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                           children: <Widget>[
                  //                             Text('Spends done in April',
                  //                                 style: cardSharingConstants.kBottomSheetDate),
                  //                             Text('₹${widget.spends[1].total_spends}',
                  //                                 style: cardSharingConstants.kBottomSheetValue),
                  //                           ],
                  //                         ),
                  //                       ),
                  //                       SizedBox(
                  //                         height: 20 * heightFactor,
                  //                       ),
                  //                       Expanded(
                  //                         child: Container(
                  //                           decoration: BoxDecoration(
                  //                               color: Color(0xFF1f2023),
                  //                               borderRadius: BorderRadius.only(
                  //                                   bottomLeft: Radius.circular(8),
                  //                                   bottomRight: Radius.circular(8))),
                  //                           child: ListView.builder(
                  //                             itemCount: widget.spends[1].amount.length,
                  //                             primary: false,
                  //                             physics: NeverScrollableScrollPhysics(),
                  //                             itemBuilder: (context, innerIndex) {
                  //                               return Padding(
                  //                                 padding:
                  //                                     EdgeInsets.only(bottom: 12, left: 14, right: 14),
                  //                                 child: SpendsCard(
                  //                                   expense_type:
                  //                                       widget.spends[1].expense_type[innerIndex],
                  //                                   height_factor: heightFactor,
                  //                                   icon_name: widget.spends[1].category[innerIndex],
                  //                                   spendName: widget.spends[1].tags[innerIndex],
                  //                                   value: widget.spends[1].amount[1].toString(),
                  //                                   width_factor: widthFactor,
                  //                                 ),
                  //                               );
                  //                             },
                  //                           ),
                  //                         ),
                  //                       )
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 10 * heightFactor),
                  //                 Container(
                  //                   height: (widget.spends[2].amount.length +
                  //                           widget.spends[2].amount.length / 6 +
                  //                           (widget.spends[2].amount.length / 12).floor() +
                  //                           1.3) *
                  //                       61 *
                  //                       heightFactor,
                  //                   width: 342 * widthFactor,
                  //                   decoration: BoxDecoration(
                  //                       color: Color(0xFF1f2023),
                  //                       border: Border.all(width: 2, color: Color(0x0cffffff)),
                  //                       borderRadius: BorderRadius.all(Radius.circular(8))),
                  //                   child: Column(
                  //                     children: <Widget>[
                  //                       SizedBox(
                  //                         height: 24 * heightFactor,
                  //                       ),
                  //                       Container(
                  //                         padding: EdgeInsets.only(
                  //                             left: 24 * widthFactor, right: 24 * widthFactor),
                  //                         child: Row(
                  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                           children: <Widget>[
                  //                             Text('Spends done in March',
                  //                                 style: cardSharingConstants.kBottomSheetDate),
                  //                             Text('₹${widget.spends[2].total_spends}',
                  //                                 style: cardSharingConstants.kBottomSheetValue),
                  //                           ],
                  //                         ),
                  //                       ),
                  //                       SizedBox(
                  //                         height: 20 * heightFactor,
                  //                       ),
                  //                       Expanded(
                  //                         child: Container(
                  //                           decoration: BoxDecoration(
                  //                               color: Color(0xFF1f2023),
                  //                               borderRadius: BorderRadius.only(
                  //                                   bottomLeft: Radius.circular(8),
                  //                                   bottomRight: Radius.circular(8))),
                  //                           child: ListView.builder(
                  //                             itemCount: widget.spends[2].amount.length,
                  //                             primary: false,
                  //                             physics: NeverScrollableScrollPhysics(),
                  //                             itemBuilder: (context, innerIndex) {
                  //                               return Padding(
                  //                                 padding:
                  //                                     EdgeInsets.only(bottom: 12, left: 14, right: 14),
                  //                                 child: SpendsCard(
                  //                                   expense_type:
                  //                                       widget.spends[2].expense_type[innerIndex],
                  //                                   height_factor: heightFactor,
                  //                                   icon_name: widget.spends[2].category[innerIndex],
                  //                                   spendName: widget.spends[2].tags[innerIndex],
                  //                                   value: widget.spends[2].amount[2].toString(),
                  //                                   width_factor: widthFactor,
                  //                                 ),
                  //                               );
                  //                             },
                  //                           ),
                  //                         ),
                  //                       )
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 10 * heightFactor),
                  //               ],
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // );
                },
              ),
              body: Container(
                // padding: EdgeInsets.only(left: 20 * widthFactor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 24 * heightFactor),
                    // GestureDetector(
                    //   onTap: () {
                    //     setState(() {
                    //       solidController.hide();
                    //       if (slideUp) {
                    //         setState(() {
                    //           dueCardTransparent = true;
                    //         });
                    //         Navigator.pop(context);
                    //       } else {
                    //         slideUp = true;
                    //         Future.delayed(Duration(milliseconds: 510), () {
                    //           setState(() {
                    //             dueCardTransparent = true;
                    //           });
                    //         }).then((onValue) {
                    //           Future.delayed(Duration(milliseconds: 100), () {
                    //             Navigator.pop(context);
                    //           });
                    //           // Navigator.pop(context);
                    //         });
                    //       }
                    //     });
                    //   },
                    //   child: Padding(
                    //     padding: EdgeInsets.only(left: 20.0 * widthFactor),
                    //     child: Icon(
                    //       Icons.arrow_back,
                    //       size: 20 * widthFactor,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(height: 26 * heightFactor),
                    Container(
                      height: 450 * heightFactor,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: <Widget>[
                          Visibility(
                            visible: widget.accountType == 'debit' ? false : true,
                            child: AnimatedPositioned(
                              duration: Duration(milliseconds: 400),
                              top: slideUp ? 20 * heightFactor : 254 * heightFactor,
                              curve: Curves.easeIn,
                              child: AnimatedOpacity(
                                duration: Duration(milliseconds: 100),
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
                                                    width: 0.5 * widthFactor,
                                                    height: 39 * heightFactor,
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
                                                        style:
                                                            cardSharingConstants.kMinimumDueStyle,
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
                                                            style:
                                                                cardSharingConstants.kDueBodyStyle),
                                                        TextSpan(
                                                            text: '14th April',
                                                            style:
                                                                cardSharingConstants.kDueDateStyle)
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
                                                          style:
                                                              cardSharingConstants.kDueBillButton,
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
                              return Material(
                                  type: MaterialType.transparency,
                                  // child: RotationTransition(
                                  // turns: Tween<double>(begin: -0.25, end: 0).animate(
                                  //     CurvedAnimation(curve: Curves.ease, parent: animation)),
                                  //   child: toHero.child,
                                  // ),
                                  child: RotationTransition(
                                    turns: Tween<double>(begin: 0, end: 0.25).animate(
                                        CurvedAnimation(curve: Curves.easeIn, parent: animation)),
                                    child: RotatedBox(
                                      child: toHero.child,
                                      quarterTurns: 3,
                                    ),
                                  ));
                            },
                            tag: 'card_${widget.cardIndex}',
                            child: SizedBox(
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  SizedBox(
                                    child: RotatedBox(
                                      quarterTurns: 1,
                                      child: Image.asset(
                                        'assets/card_sharing/new_${widget.cardImage}.png',
                                        // width: 188 * heightFactor,
                                        height: 320 * widthFactor,
                                      ),
                                    ),
                                  ),
                                  AnimatedOpacity(
                                    duration: Duration(milliseconds: 450),
                                    curve: Curves.easeIn,
                                    opacity: enlargedTextTransparent ? 0 : 1,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 40 * widthFactor,
                                          right: 45 * widthFactor,
                                          top: 25 * heightFactor),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '${widget.orgName}',
                                            style: cardSharingConstants.kBankNameStyle,
                                          ),
                                          SizedBox(height: 39 * heightFactor),
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
                                          SizedBox(height: 54 * heightFactor),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.only(top: 8 * heightFactor),
                                                      child: Text('**** **** **** ',
                                                          style: cardSharingConstants
                                                              .kCardNumberStyle),
                                                    ),
                                                    Text(
                                                        '${widget.accountNumber.substring(12, 16)}',
                                                        style:
                                                            cardSharingConstants.kCardNumberStyle),
                                                  ]),
                                              Text(
                                                '${widget.accountType.toUpperCase()}',
                                                style: cardSharingConstants.kCardTypeStyle,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
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
      ),
    );
  }
}
