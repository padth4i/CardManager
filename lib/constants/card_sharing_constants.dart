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
      kRupeeStyle,
      kEnlargedBodyStyle,
      kEnlargedAvailableAmountStyle,
      kEnlargedSpentAmountStyle,
      kDueTitleStyle,
      kDueBodyStyle,
      kTotalDueStyle,
      kMinimumDueStyle,
      kDueDateStyle,
      kWalletNameStyle,
      kBottomSheetDate,
      kBottomSheetValue;

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
      fontSize: 10.0 / textScaleFactor,
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
      fontSize: 12.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xffffffff),
    );
    this.kPayByStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 10.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
    );
    this.kEnlargedBodyStyle = TextStyle(
      fontSize: 10.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w400,
      color: Color(0x80ffffff),
    );
    this.kEnlargedAvailableAmountStyle = TextStyle(
      fontSize: 22.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xffffffff),
    );
    this.kEnlargedSpentAmountStyle = TextStyle(
      fontSize: 18.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w500,
      color: Color(0xffffffff),
    );
    this.kDueTitleStyle = TextStyle(
      fontSize: 10.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xffffffff),
    );
    this.kDueBodyStyle = TextStyle(
      fontSize: 10.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w500,
      color: Color(0x80ffffff),
    );
    this.kTotalDueStyle = TextStyle(
      fontSize: 18.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xff008afc),
    );
    this.kMinimumDueStyle = TextStyle(
      fontSize: 18.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w500,
      color: Color(0xffffffff),
    );
    this.kDueDateStyle = TextStyle(
      fontSize: 10.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xffffffff),
    );
    this.kWalletNameStyle = TextStyle(
      fontSize: 14.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xffffffff),
    );
    this.kBottomSheetDate = TextStyle(
      fontSize: 14.0 / textScaleFactor,
      color: Color(0x88ffffff),
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w500,
    );
    this.kBottomSheetValue = TextStyle(
      fontSize: 14.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      color: Color(0xffffffff),
      fontWeight: FontWeight.w600,
    );
  }
}
