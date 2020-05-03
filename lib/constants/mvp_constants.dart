import 'package:flutter/material.dart';

class MvpConstants {
  double textScaleFactor;
  TextStyle kSplitwiseBalanceHelperText,
      kSplitwiseBalancePositiveAmount,
      kSplitwiseBalanceNegativeAmount,
      kSplitwiseToolTip,
      kFilterTextUnselected,
      kFilterTextSelected,
      kSpentThisMonthValueRupeeSymbol,
      kSpentThisMonthText,
      kSpentThisMonthValue,
      kSpentDuringFilterPeriod,
      kCategoryFilterStyle,
      kCalendarHeader;
  TextStyle kMostSpentText,
      kMostSpentCategoryText,
      kGraphText,
      kYourSpends,
      kSpendpercentageText,
      kSpendCategoryText,
      kGaugeCenterText,
      kGaugeCenterAmount,
      kPageHeader,
      spendCardDate,
      spendCardAmountPositiveAmount,
      spendCardAmountNegativeAmount,
      spendCardName,
      kBottomSheetHeaderText,
      kCalendarTab,
      kCalendarFormattedDate,
      kCalendarButtons;

  MvpConstants(double textScale) {
    this.textScaleFactor = textScale;
    this.kSplitwiseBalanceHelperText = TextStyle(
      fontSize: 12.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );
    this.kSplitwiseBalancePositiveAmount = TextStyle(
      fontSize: 20.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFF56A84C),
    );
    this.kSplitwiseBalanceNegativeAmount = TextStyle(
      fontSize: 20.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFFff5b5b),
    );
    this.kSplitwiseToolTip = TextStyle(
      fontSize: 10.0,
      fontFamily: 'HKGrotesk',
      //fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );
    this.kSplitwiseToolTip = TextStyle(
      fontSize: 10.0,
      fontFamily: 'HKGrotesk',
      //fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );
    this.kFilterTextUnselected = TextStyle(
      fontSize: 10.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );
    this.kFilterTextSelected = TextStyle(
      fontSize: 10.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFF0089ff),
    );
    this.kSpentThisMonthValueRupeeSymbol = TextStyle(
      fontSize: 24.0 / textScaleFactor,
      fontFamily: 'PingFang-SC',
      fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );

    this.kSpentThisMonthValue = TextStyle(
      fontSize: 20.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w700,
      color: Color(0xFFffffff),
    );

    this.kSpentThisMonthText = TextStyle(
      fontSize: 12.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      color: Color(0xFFffffff),
    );

    this.kMostSpentText = TextStyle(
      fontSize: 14.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      color: Color(0xFFffffff),
    );

    this.kMostSpentCategoryText = TextStyle(
      fontSize: 14.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w800,
      color: Color(0xFFffffff),
    );

    this.kGraphText = TextStyle(
      fontSize: 10.0,
      fontFamily: 'HKGrotesk',
      color: Color(0xFFffffff),
    );

    this.kSpendCategoryText = TextStyle(
      fontSize: 12.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      color: Color(0xFFffffff),
    );

    this.kSpendpercentageText = TextStyle(
      fontSize: 12.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      color: Color(0xFFffffff),
    );

    this.kYourSpends = TextStyle(
      fontSize: 12.0 / textScaleFactor,
      fontWeight: FontWeight.w600,
      fontFamily: 'HKGrotesk',
      color: Color(0xFFffffff),
    );

    this.kSpentDuringFilterPeriod = TextStyle(
      fontSize: 12.0 / textScaleFactor,
      fontWeight: FontWeight.w600,
      fontFamily: 'HKGrotesk',
      color: Color(0xFFffffff),
    );
    this.kGaugeCenterText = TextStyle(
      fontSize: 12.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );
    this.kGaugeCenterAmount = TextStyle(
      fontSize: 22.0 / textScaleFactor,
      fontFamily: 'PingFang-SC',
      color: Color(0xFFffffff),
    );
    this.kPageHeader = TextStyle(
      fontSize: 16.0 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );

    this.spendCardDate = TextStyle(
      fontSize: 10 / textScaleFactor,
      fontFamily: 'HKGrotesk-SemiBold',
      fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );

    this.spendCardAmountPositiveAmount = TextStyle(
      fontSize: 14 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFF56A84C),
    );

    this.spendCardAmountNegativeAmount = TextStyle(
      fontSize: 14 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFFff5f5f),
    );
    this.spendCardName = TextStyle(
      fontSize: 14 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );
    this.kBottomSheetHeaderText = TextStyle(
      fontSize: 16 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Color(0xFFffffff),
    );
    this.kCategoryFilterStyle = TextStyle(
      fontSize: 12 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      color: Colors.white,
    );
    this.kCalendarHeader = TextStyle(
      fontSize: 12 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w800,
      color: Color(0xFF0089ff),
    );
    this.kCalendarTab = TextStyle(
      fontSize: 14 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
    this.kCalendarFormattedDate = TextStyle(
      fontSize: 14 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
    this.kCalendarButtons = TextStyle(
      fontSize: 10 / textScaleFactor,
      fontFamily: 'HKGrotesk',
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }
}
