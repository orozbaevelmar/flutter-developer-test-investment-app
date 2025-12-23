import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_investment_app/core/theme/app_theme.dart';

extension ContextExtensions on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  double get screenWidth => mq.size.width;
  double get screenHeight => mq.size.height;

  LoadBoardTheme get loadBoardTheme => read<LoadBoardTheme>();

  double getProportionateScreenHeight(double inputHeight) {
    final screenHeight = this.screenHeight;
    return (inputHeight / LoadBoardTheme.defaultScreenHeight) * screenHeight;
  }
}
