import 'package:flutter/material.dart';
import 'package:stock_investment_app/core/extensions/context_extension.dart';
import 'package:stock_investment_app/core/theme/load_board_colors.dart';

class TapDay extends StatelessWidget {
  final String day;
  final bool isActive;
  final void Function()? onTap;

  const TapDay({
    super.key,
    required this.day,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.loadBoardTheme;
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isActive ? TzColors.primary : TzColors.inputBgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: appTheme.paddingXXS),
            child: Center(
              child: Text(
                day,
                style: appTheme.baseStrong.copyWith(
                  color: isActive ? TzColors.neutral : TzColors.blueGrey,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
