import 'package:card_manager/big_card.dart';
import 'package:card_manager/constants/mvp_constants.dart';
import 'package:card_manager/credit_card.dart';
import 'package:card_manager/debit_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiffy/jiffy.dart';
import 'package:card_manager/constants/card_sharing_constants.dart';
import 'package:card_manager/data/mock_data/mock_accounts.dart';
import 'package:card_manager/data/mock_data/mock_statements.dart';

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
    // 'green',
    // 'brown',
    // 'dark_blue',
    // 'light_blue',
    // 'yellow'
  ];
  // final MultiTrackTween multiTrackTween = MultiTrackTween([
  //   Track('rotate').add(Duration(milliseconds: 300), Tween(begin: 0.0, end: -0.5)),
  //   Track('scale').add(Duration(milliseconds: 300), Tween(begin: 1.0, end: 0.5)),
  //   Track('opacity').add(Duration(milliseconds: 300), Tween(begin: 1.0, end: 0.0)),
  //   Track('padding_right').add(Duration(milliseconds: 300), Tween(begin: 0.0, end: 20)),
  // ]);

  // final MultiTrackTween animacaoCard = MultiTrackTween([
  //   Track('rotate').add(Duration(milliseconds: 300), Tween(begin: 0.0, end: -1.07)),
  //   Track('top')
  //       .add(Duration(milliseconds: 300), Tween(begin: 0.20, end: 0.05), curve: Curves.easeInCubic),
  //   Track('scale')
  //       .add(Duration(milliseconds: 300), Tween(begin: 1.0, end: 1.32), curve: Curves.easeInCubic),
  //   Track('new_scale')
  //       .add(Duration(milliseconds: 300), Tween(begin: 1.0, end: 0.0), curve: Curves.easeInCubic),
  // ]);

  static final mockAccounts = MockAccounts();
  final mockStatements = MockStatements();
  List<bool> isSelected = List(mockAccounts.list.length);
  _CardSharingState() {
    isSelected.fillRange(0, mockAccounts.list.length, false);
    print(isSelected);
  }

  Widget _formattedDate(DateTime date, TextStyle style) {
    return RichText(
        text: TextSpan(children: <TextSpan>[
      TextSpan(text: 'Pay by ', style: style.copyWith(color: Color(0x80ffffff))),
      TextSpan(text: Jiffy(date).format('do MMM').toString(), style: style)
    ]));
  }

  MvpConstants mvpConstants;

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
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 36 * heightFactor),
                Row(
                  children: <Widget>[
                    SizedBox(width: 16 * widthFactor),
                    SvgPicture.asset('assets/card_sharing/icon.svg'),
                    SizedBox(width: 6 * widthFactor),
                    Text('My Cards', style: cardSharingConstants.kHeadingStyle),
                  ],
                ),
                SizedBox(height: 21 * heightFactor),

                SizedBox(
                  height: 242 / heightFactor,
                  child: ListView.builder(
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    physics: isSelected.contains(true)
                        ? NeverScrollableScrollPhysics()
                        : ScrollPhysics(),
                    itemCount: mockAccounts.list.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // setState(() {
                          //   isSelected[index] = !isSelected[index];
                          // });
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => BigCard()));

                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(milliseconds: 600),
                                  pageBuilder: (_, __, ___) => BigCard(
                                        accountNumber: mockAccounts.list[index].account_number,
                                        balance: mockAccounts.list[index].balance,
                                        orgName: mockAccounts.list[index].org_name,
                                        spentThisMonth: mockAccounts.list[index].spent_this_month,
                                        accountType: mockAccounts.list[index].account_type,
                                        cardImage: cardImages[index % 3],
                                        cardIndex: index,
                                      )));
                        },
                        child: Hero(
                          flightShuttleBuilder: (
                            BuildContext flightContext,
                            Animation<double> animation,
                            HeroFlightDirection flightDirection,
                            BuildContext fromHeroContext,
                            BuildContext toHeroContext,
                          ) {
                            final Hero toHero = toHeroContext.widget;
                            return RotationTransition(
                              // turns: animation.drive(Tween(begin: 0, end: -0.05)),
                              turns: Tween<double>(begin: 0, end: -0.25)
                                  .animate(CurvedAnimation(curve: Curves.ease, parent: animation)),
                              child: toHero.child,
                            );
                          },
                          tag: 'card_$index',
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: index == 0 ? 16 * widthFactor : 0, right: 9.0 * widthFactor),
                            child: mockAccounts.list[index].account_type == 'credit'
                                ? CreditCard(
                                    accountNumber: mockAccounts.list[index].account_number,
                                    balance: mockAccounts.list[index].balance,
                                    cardColor: cardImages[index % 3],
                                    heightFactor: heightFactor,
                                    widthFactor: widthFactor,
                                    orgName: mockAccounts.list[index].org_name,
                                    spentThisMonth: mockAccounts.list[index].spent_this_month,
                                    textScaleFactor: queryData.textScaleFactor,
                                  )
                                : DebitCard(
                                    accountNumber: mockAccounts.list[index].account_number,
                                    balance: mockAccounts.list[index].balance,
                                    cardColor: cardImages[index % 3],
                                    heightFactor: heightFactor,
                                    widthFactor: widthFactor,
                                    orgName: mockAccounts.list[index].org_name,
                                    spentThisMonth: mockAccounts.list[index].spent_this_month,
                                    textScaleFactor: queryData.textScaleFactor,
                                  ),
                            // child: AnimatedOpacity(
                            //   duration: Duration(milliseconds: 10),
                            //   opacity:
                            //       isSelected.contains(true) && isSelected[index] == false ? 0 : 1,
                            //   child: Stack(children: [
                            //     ControlledAnimation(
                            //       tween: animacaoCard,
                            //       duration: animacaoCard.duration,
                            //       playback: isSelected[index]
                            //           ? Playback.PLAY_FORWARD
                            //           : Playback.PLAY_REVERSE,
                            //       builder: (context, animation) {
                            //         return Positioned(
                            //           child: Transform.rotate(
                            //             angle: animation['rotate'],
                            //             child: Transform.scale(
                            //               scale: animation['scale'],
                            //               child: ControlledAnimation(
                            //                 tween: multiTrackTween,
                            //                 duration: multiTrackTween.duration,
                            //                 playback: isSelected[index]
                            //                     ? Playback.PLAY_FORWARD
                            //                     : Playback.PLAY_REVERSE,
                            //                 builder: (context, animation) {
                            //                   return Transform.rotate(
                            //                     angle: animation['rotate'],
                            //                     child: mockAccounts.list[index].account_type ==
                            //                             'credit'
                            //                         ? CreditCard(
                            //                             accountNumber:
                            //                                 mockAccounts.list[index].account_number,
                            //                             balance: mockAccounts.list[index].balance,
                            //                             cardColor: cardImages[index % 3],
                            //                             heightFactor: heightFactor,
                            //                             widthFactor: widthFactor,
                            //                             orgName: mockAccounts.list[index].org_name,
                            //                             spentThisMonth: mockAccounts
                            //                                 .list[index].spent_this_month,
                            //                             textScaleFactor: queryData.textScaleFactor,
                            //                           )
                            //                         : DebitCard(
                            //                             accountNumber:
                            //                                 mockAccounts.list[index].account_number,
                            //                             balance: mockAccounts.list[index].balance,
                            //                             cardColor: cardImages[index % 3],
                            //                             heightFactor: heightFactor,
                            //                             widthFactor: widthFactor,
                            //                             orgName: mockAccounts.list[index].org_name,
                            //                             spentThisMonth: mockAccounts
                            //                                 .list[index].spent_this_month,
                            //                             textScaleFactor: queryData.textScaleFactor,
                            //                           ),
                            //                   );
                            //                 },
                            //               ),
                            //             ),
                            //           ),
                            //         );
                            //       },
                            //     ),
                            //   ]),
                            // ),
                          ),
                        ),
                      );
                    },
                  ),
                )

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

// class ItemPage extends StatelessWidget {
//   final Color color;
//   final int index;
//   final String numberCard;
//   final String name;
//   final String imageURL;
//   final String operadoraURL;

// final MultiTrackTween multiTrackTween = MultiTrackTween([
//   Track('rotate')
//       .add(Duration(milliseconds: 300), Tween(begin: 0.0, end: -0.5)),
//   Track('scale')
//       .add(Duration(milliseconds: 300), Tween(begin: 1.0, end: 0.5)),
//   Track('opacity')
//       .add(Duration(milliseconds: 300), Tween(begin: 1.0, end: 0.0)),
//   Track('padding_right')
//       .add(Duration(milliseconds: 300), Tween(begin: 0.0, end: 20)),
// ]);

// final MultiTrackTween animacaoCard = MultiTrackTween([
//   Track('rotate')
//       .add(Duration(milliseconds: 300), Tween(begin: 0.0, end: 1.57)),
//   Track('top').add(Duration(milliseconds: 300), Tween(begin: 0.20, end: 0.05),
//       curve: Curves.easeInCubic),
//   Track('scale').add(Duration(milliseconds: 300), Tween(begin: 1.0, end: 0.7),
//       curve: Curves.easeInCubic),
//   Track('new_scale').add(
//       Duration(milliseconds: 300), Tween(begin: 1.0, end: 0.0),
//       curve: Curves.easeInCubic),
// ]);

//   ItemPage(
//       {Key key,
//       this.color,
//       this.index,
//       this.numberCard,
//       this.name,
//       this.imageURL,
//       this.operadoraURL})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         int currentIndex =
//             Provider.of<PageControllerApp>(context, listen: false).currentIndex;
//         if (currentIndex != -1) {
//           Provider.of<PageControllerApp>(context, listen: false).setisFlipped(
//               !Provider.of<PageControllerApp>(context, listen: false)
//                   .isFlipped);
//         } else {
//           Provider.of<PageControllerApp>(context, listen: false)
//               .setCurrentIndex(index);
//           await Provider.of<PageControllerApp>(context, listen: false)
//               .showSheet();
//         }
//       },
//       child: Consumer<PageControllerApp>(
//         child: FlippableBox(
//           front: FrontCard(
//             operadoraURL: operadoraURL,
//             imageURL: imageURL,
//             color: color,
//           ),
//           back: BackCard(color),
//           isFlipped:
//               Provider.of<PageControllerApp>(context, listen: false).isFlipped,
//         ),
//         builder: (BuildContext context, PageControllerApp value, Widget child) {
//           int pageIndex =
//               Provider.of<PageControllerApp>(context, listen: false).index;

//           int currentIndex =
//               Provider.of<PageControllerApp>(context, listen: false)
//                   .currentIndex;

//           double progress =
//               Provider.of<PageControllerApp>(context, listen: false)
//                   .progress;

//           double spec = Provider.of<PageControllerApp>(context, listen: false)
//               .spec;

//           bool hideCard;
//           if (currentIndex != -1) {
//             if (index == currentIndex) {
//               hideCard = false;
//             } else {
//               hideCard = true;
//             }
//           } else {
//             hideCard = false;
//           }

//           return AnimatedOpacity(
// duration: Duration(milliseconds: 10),
// opacity: hideCard ? 0 : 1,
//             child: Stack(
//               alignment: Alignment.center,
//               children: <Widget>[
//                 ControlledAnimation(
//                   tween: animacaoCard,
//                   duration: animacaoCard.duration,
//                   playback: currentIndex != -1
//                       ? Playback.PLAY_FORWARD
//                       : Playback.PLAY_REVERSE,
//                   builder: (context, animation) {
//                     return Positioned(
//                       top: MediaQuery.of(context).size.height *
//                                       animation['top'] - progress * MediaQuery.of(context).size.height * 0.42 +
//                                       MediaQuery.of(context).padding.top,
//                       height: MediaQuery.of(context).size.height * 0.55,
//                       width: MediaQuery.of(context).size.width * 0.80,
//                       child: Transform.rotate(
//                         angle: animation['rotate'],
//                         child: Transform.scale(
//                           scale: animation['scale'],
//                           child: ControlledAnimation(
//                             tween: multiTrackTween,
//                             duration: multiTrackTween.duration,
//                             playback: pageIndex > index
//                                 ? Playback.PLAY_FORWARD
//                                 : Playback.PLAY_REVERSE,
//                             builder: (context, animation) {
//                               return Transform.rotate(
//                                 angle: animation['rotate'],
//                                 child: Transform.scale(
//                                     child: Opacity(
//                                       child: Padding(
//                                         padding: EdgeInsets.only(
//                                             right:
//                                                 0 /*animation['padding_right']*/),
//                                         child: child,
//                                       ),
//                                       opacity: animation['opacity'],
//                                     ),
//                                     scale: animation['scale'] - (progress * 0.6)),
//                               );
//                             },
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
