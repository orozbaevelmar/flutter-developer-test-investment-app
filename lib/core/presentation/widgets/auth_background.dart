import 'package:flutter/material.dart';
import 'package:stock_investment_app/core/extensions/context_extension.dart';
import 'package:stock_investment_app/core/theme/load_board_colors.dart';

class AuthBackgroundGradient extends StatelessWidget {
  final Widget child;
  final AppBar? appBar;
  final Widget? bottomBar;

  const AuthBackgroundGradient({
    super.key,
    required this.child,
    this.appBar,
    this.bottomBar,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.loadBoardTheme;
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(gradient: TzColors.authGradient),
        child: Padding(
          padding: EdgeInsets.only(
            left: appTheme.paddingM,
            right: appTheme.paddingM,
          ),
          child: child,
        ),
      ),
    );
  }
}
