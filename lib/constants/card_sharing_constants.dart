import 'package:flutter/material.dart';

class CardSharingConstants {
  double textScaleFactor;
  TextStyle kHeadingStyle,
      kBodyStyle,
      kAvailableAmountStyle,
      kSpentAmountStyle,
      kDueBillButton,
      kCardNumberStyle,
      kBankNameStyle,
      kCardTypeStyle,
      kPayByStyle,
      kRupeeStyle;

  CardSharingConstants(double textScale) {
    this.textScaleFactor = textScale;
    this.kRupeeStyle = TextStyle(
      fontFamily: 'PingFang-SC',
    );
    this.kHeadingStyle = TextStyle(
      fontSize: 20.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );
    this.kBodyStyle = TextStyle(
      fontSize: 12.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w400,
      color: Color(0x80ffffff),
    );
    this.kAvailableAmountStyle = TextStyle(
      fontSize: 20.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xffffffff),
    );
    this.kSpentAmountStyle = TextStyle(
      fontSize: 16.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w500,
      color: Color(0xffffffff),
    );
    this.kDueBillButton = TextStyle(
      fontSize: 8.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w700,
      color: Color(0xffffffff),
    );
    this.kCardNumberStyle = TextStyle(
      fontSize: 14.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0x61ffffff),
    );
    this.kBankNameStyle = TextStyle(
      fontSize: 12.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w700,
      color: Color(0xffffffff),
    );
    this.kCardTypeStyle = TextStyle(
      fontSize: 10.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w700,
      color: Color(0xffffffff),
    );
    this.kPayByStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 10.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
    );
  }
}
