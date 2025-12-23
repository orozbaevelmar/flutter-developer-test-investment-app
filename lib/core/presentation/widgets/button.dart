import 'package:flutter/material.dart';
import 'package:stock_investment_app/core/extensions/context_extension.dart';
import 'package:stock_investment_app/core/theme/load_board_colors.dart';

enum ButtonVariant { primary, secondary }

class Button extends StatelessWidget {
  final String text;
  final ButtonVariant variant;
  final VoidCallback? onPressed;
  final bool isLoading;

  const Button(
    this.text, {
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.variant = ButtonVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.loadBoardTheme;

    switch (variant) {
      case ButtonVariant.primary:
        return ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            overlayColor: TzColors.neutral,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: const Size(0, 40),
            disabledForegroundColor: TzColors.neutral,
            disabledBackgroundColor: TzColors.blueBase5.withValues(
              alpha: 0.5,
            ),
            foregroundColor: TzColors.neutral,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            backgroundColor: TzColors.blueBase5,
          ),
          child: Text(text, style: appTheme.LGStrong),
        );

      case ButtonVariant.secondary:
        return OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: const Size(0, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            side: BorderSide(color: TzColors.blueBase5, width: 1.0),
          ),
          child: Text(
            text,
            style: appTheme.LGStrong.copyWith(
              color: TzColors.blueBase5,
            ),
          ),
        );
    }
  }
}
