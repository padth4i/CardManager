import 'package:card_manager/bloc/card_bloc.dart';
import 'package:card_manager/constants/card_sharing_constants.dart';
import 'package:card_manager/constants/mvp_constants.dart';
import 'package:card_manager/data/spends_object.dart';
import 'package:card_manager/spends_card.dart';
import 'package:flutter/material.dart';
import 'package:card_manager/solidBottomSheet.dart' as bottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';


class BottomSheet extends StatelessWidget {
  BottomSheet({Key key, this.heightFactor, this.widthFactor, this.sheetMinHeight, this.sheetMaxHeight, this.solidController, this.physics, this.spends}) : super(key: key);
  final double heightFactor, widthFactor, sheetMinHeight, sheetMaxHeight;
  final SolidController solidController;
  final ScrollPhysics physics;
  final List<SpendsObject> spends;

  MvpConstants mvpConstants;
  CardSharingConstants cardSharingConstants;
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    cardSharingConstants = CardSharingConstants(queryData.textScaleFactor);
    mvpConstants = MvpConstants(queryData.textScaleFactor);
    final blocInstance = BlocProvider.of<CardBloc>(context);
    return Container(
      child: Container(
                color: Color(0xff171717),
                child: bottomSheet.SolidBottomSheet(
                  // minHeight:  ? 0 : 240 * heightFactor,
                  // minHeight: 0,
                  // maxHeight:  ? 240 * heightFactor : 740 * heightFactor,
                  // maxHeight: 740 * heightFactor,
                  minHeight: sheetMinHeight * heightFactor,
                  maxHeight: sheetMaxHeight * heightFactor,
                  smoothness: Smoothness.high,
                  draggableBody: true,
                  controller: solidController,
                  canUserSwipe: true,
                  headerBar: Container(
                    color: Colors.transparent,
                  ),
                  onHide: () {
                    print('hide');
                    ChangeScrollPhysicsToHidden event = ChangeScrollPhysicsToHidden(NeverScrollableScrollPhysics());
                    blocInstance.add(event);
                  },
                  onShow: () {
                    print('show');
                    ChangeScrollPhysicsToShow event = ChangeScrollPhysicsToShow(ScrollPhysics());
                    blocInstance.add(event);
                  },
                  body: Container(
                    color: Color(0xFF1f2023),
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Color(0xFF171717),
                          child: Container(
                            height: 72 * heightFactor,
                            decoration: BoxDecoration(
                                color: Color(0xFF1f2023),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(14), topRight: Radius.circular(14))),
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
                        ),
                        Expanded(
                          child: ListView(
                            physics: physics,
                            children: <Widget>[
                              Container(
                                height: (spends[0].amount.length +
                                        spends[0].amount.length / 6 +
                                        (spends[0].amount.length / 12).floor() +
                                        1.3) *
                                    61 *
                                    heightFactor,
                                width: 342 * widthFactor,
                                decoration: BoxDecoration(
                                    color: Color(0xFF1f2023),
                                    border: Border.all(width: 2, color: Color(0x0cffffff)),
                                    borderRadius: BorderRadius.all(Radius.circular(8))),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 24 * heightFactor,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 24 * widthFactor, right: 24 * widthFactor),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('Spends done in May',
                                              style: cardSharingConstants.kBottomSheetDate),
                                          Text('₹${spends[0].total_spends}',
                                              style: cardSharingConstants.kBottomSheetValue),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20 * heightFactor,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xFF1f2023),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(8),
                                                bottomRight: Radius.circular(8))),
                                        child: ListView.builder(
                                          itemCount: spends[0].amount.length,
                                          primary: false,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, innerIndex) {
                                            return Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 12, left: 14, right: 14),
                                              child: SpendsCard(
                                                expense_type:
                                                    spends[0].expense_type[innerIndex],
                                                height_factor: heightFactor,
                                                icon_name: spends[0].category[innerIndex],
                                                spendName: spends[0].tags[innerIndex],
                                                value: spends[0].amount[0].toString(),
                                                width_factor: widthFactor,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10 * heightFactor),
                              Container(
                                height: (spends[1].amount.length +
                                        spends[1].amount.length / 6 +
                                        (spends[1].amount.length / 12).floor() +
                                        1.3) *
                                    61 *
                                    heightFactor,
                                width: 342 * widthFactor,
                                decoration: BoxDecoration(
                                    color: Color(0xFF1f2023),
                                    border: Border.all(width: 2, color: Color(0x0cffffff)),
                                    borderRadius: BorderRadius.all(Radius.circular(8))),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 24 * heightFactor,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 24 * widthFactor, right: 24 * widthFactor),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('Spends done in April',
                                              style: cardSharingConstants.kBottomSheetDate),
                                          Text('₹${spends[1].total_spends}',
                                              style: cardSharingConstants.kBottomSheetValue),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20 * heightFactor,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xFF1f2023),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(8),
                                                bottomRight: Radius.circular(8))),
                                        child: ListView.builder(
                                          itemCount: spends[1].amount.length,
                                          primary: false,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, innerIndex) {
                                            return Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 12, left: 14, right: 14),
                                              child: SpendsCard(
                                                expense_type:
                                                    spends[1].expense_type[innerIndex],
                                                height_factor: heightFactor,
                                                icon_name: spends[1].category[innerIndex],
                                                spendName: spends[1].tags[innerIndex],
                                                value: spends[1].amount[1].toString(),
                                                width_factor: widthFactor,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10 * heightFactor),
                              Container(
                                height: (spends[2].amount.length +
                                        spends[2].amount.length / 6 +
                                        (spends[2].amount.length / 12).floor() +
                                        1.3) *
                                    61 *
                                    heightFactor,
                                width: 342 * widthFactor,
                                decoration: BoxDecoration(
                                    color: Color(0xFF1f2023),
                                    border: Border.all(width: 2, color: Color(0x0cffffff)),
                                    borderRadius: BorderRadius.all(Radius.circular(8))),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 24 * heightFactor,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 24 * widthFactor, right: 24 * widthFactor),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('Spends done in March',
                                              style: cardSharingConstants.kBottomSheetDate),
                                          Text('₹${spends[2].total_spends}',
                                              style: cardSharingConstants.kBottomSheetValue),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20 * heightFactor,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xFF1f2023),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(8),
                                                bottomRight: Radius.circular(8))),
                                        child: ListView.builder(
                                          itemCount: spends[2].amount.length,
                                          primary: false,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, innerIndex) {
                                            return Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 12, left: 14, right: 14),
                                              child: SpendsCard(
                                                expense_type:
                                                    spends[2].expense_type[innerIndex],
                                                height_factor: heightFactor,
                                                icon_name: spends[2].category[innerIndex],
                                                spendName: spends[2].tags[innerIndex],
                                                value: spends[2].amount[2].toString(),
                                                width_factor: widthFactor,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10 * heightFactor),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
    );
  }
}


