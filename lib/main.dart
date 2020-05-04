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
  List<String> walletImages = [
    'red',
    'blue',
  ];
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
                  height: 222 / heightFactor,
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
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 34 * heightFactor),
                Row(
                  children: <Widget>[
                    SizedBox(width: 16 * widthFactor),
                    SvgPicture.asset('assets/card_sharing/icon.svg'),
                    SizedBox(width: 6 * widthFactor),
                    Text('My Wallets', style: cardSharingConstants.kHeadingStyle),
                  ],
                ),
                SizedBox(height: 21 * heightFactor),
                SizedBox(
                  height: 150 / heightFactor,
                  child: ListView.builder(
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(
                              left: index == 0 ? 16 * widthFactor : 0, right: 9.0 * widthFactor),
                          child: Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/card_sharing/wallet_${walletImages[index % 2]}.png',
                                    width: 160 * widthFactor,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 15 * widthFactor, top: 14 * heightFactor),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Flipkart Paylater',
                                          style: cardSharingConstants.kWalletNameStyle,
                                        ),
                                        SizedBox(height: 4 * heightFactor),
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
                                        SizedBox(height: 14 * heightFactor),
                                        Text(
                                          '₹69,952',
                                          style: cardSharingConstants.kAvailableAmountStyle,
                                        ),
                                        Text('this month', style: cardSharingConstants.kBodyStyle),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ));
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
