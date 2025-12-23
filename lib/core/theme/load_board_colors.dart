import 'package:flutter/material.dart';

class TzColors {
  /// Primary color palette
  static const Color primary = Color(0xFF0071F0);
  static const Color primary100 = Color(0xFFCFD6E5);
  static const Color primary200 = Color(0xFF99C6F9);
  static const Color primary300 = Color(0xFF66AAF6);
  static const Color primary400 = Color(0xFF338DF3);
  static const Color primary600 = Color(0xFF005AC0);
  static const Color primary700 = Color(0xFF004490);
  static const Color primary800 = Color(0xFF002D60);
  static const Color primary900 = Color(0xFF001730);
  static const Color secondary = Color(0xFF66AAF6);
  static const Color background = Color(0xFFF5F5F5);
  static const Color accent = Color(0xFF338DF3);
  static const Color blueGrey = Color(0xFF8997B0);
  static const Color blueBase5 = Color(0xFF0071F0);
  static const Color baseOrange500 = Color(0xFFFEF9F3);
  static const Color baseBlue6 = Color(0xFF005AC0);
  static const Color bgBase = Color(0xFFEEF0F3);
  static const Color black = Color(0xFF000000);
  static const Color baseGreen5 = Color(0xFF2CB62F);

  // RfqStatus
  // booked and service complete
  static const Color baseOrange1 = Color(0xFFFCE7CF);
  static const Color baseOrange4 = Color(0xFFFFBE33);
  static const Color baseOrange9 = Color(0xFF332300);

  // pending
  static const Color baseOrange8 = Color(0xFF664600);

  // dropped
  static const Color baseBlue1 = Color(0xFFCCE3FC);
  static const Color baseBlue4 = Color(0xFF0071F0);
  // text

  // denied
  static const Color deniedContainer = Color(0xffFFF6EB);

  // finished
  static const Color baseGreen1 = Color(0xFFD5F0D5);
  static const Color baseGreen4 = Color(0xFF56C459);
  static const Color baseGreen8 = Color(0xFF124913);

  /// Success color palette
  static const Color success = Color(0xFF2CB62F);
  static const Color success100 = Color(0xFFD5F0D5);
  static const Color success200 = Color(0xFFABE2AC);
  static const Color success300 = Color(0xFF80D382);
  static const Color success400 = Color(0xFF56C459);
  static const Color success500 = Color(0xFF2CB62F);
  static const Color success600 = Color(0xFF239126);
  static const Color success700 = Color(0xFF1A6D1C);
  static const Color success800 = Color(0xFF124913);
  static const Color success900 = Color(0xFF092409);

  /// Warning color palette
  static const Color warning = Color(0xFFFFAE00);
  static const Color warning100 = Color(0xFFCCE3FC);
  static const Color warning200 = Color(0xFFFACE9F);
  static const Color warning300 = Color(0xFFFFCE66);
  static const Color warning400 = Color(0xFF338DF3);
  static const Color warning500 = Color(0xFFFFAE00);
  static const Color warning600 = Color(0xFFCC8B00);
  static const Color warning700 = Color(0xFF996800);
  static const Color warning800 = Color(0xFF664600);
  static const Color warning900 = Color(0xFF332300);

  /// Warning color palette
  static const Color danger = Color(0xFFFF3D3D);
  static const Color danger100 = Color(0xFFFFD8D8);
  static const Color danger200 = Color(0xFF99C6F9);
  static const Color danger300 = Color(0xFFFF8B8B);
  static const Color danger400 = Color(0xFFFF6464);
  static const Color danger500 = Color(0xFFFF3D3D);
  static const Color danger600 = Color(0xFFCC3131);
  static const Color danger700 = Color(0xFF992525);
  static const Color danger800 = Color(0xFF661818);
  static const Color danger900 = Color(0xFF330C0C);

  static const Color text = Color(0xFF002D60);
  static const Color textBody = Color(0xFF264C78);
  static const Color textSecondary = Color(0xFF597798);
  static const Color textTertiary = Color(0xFF8CA0B7);
  static const Color priceInputColor = Color(0xFF1B3362);
  static const Color borderColor = Color(0xFFCFD6E5);
  static const Color neutral = Color(0xFFFFFFFF);

  static const Color accountInputLabelColor = Color(0xFF4E6D8B);
  static const Color accountInputFillColor = Color(0xFFE9EFF7);
  static const Color inputBgColor = Color(0xFFE9EFF7);
  static const Color checkBoxBorderColor = Color(0xFFDBE2EF);
  static const Color bondedColor = Color(0xFFDCB5F8);
  static const Color bondedCheckColor = Color(0xFF311A42);
  static const Color datePickerTitleColor = Color(0xFF002D60);
  static const Color fillColorSecondary = Color(0xFF519CEC);

  static const Color cardColor = Color(0x33002D60);

  static const Gradient authGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primary, Color(0xFF001730)],
  );
}
