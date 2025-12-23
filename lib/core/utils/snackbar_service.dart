import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_investment_app/core/theme/images.dart';
import 'package:stock_investment_app/core/theme/load_board_colors.dart';

@lazySingleton
class SnackBarService {
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void showSuccess(String message, {Color? backgroundColor}) => _showSnackBar(
        message: message,
        backgroundColor: backgroundColor ?? Colors.green.withAlpha(5),
        icon: const Icon(Icons.check_circle, color: Colors.white),
      );

  void showError(String message) => _showSnackBar(
        message: message,
        backgroundColor: TzColors.danger100,
        icon: SvgPicture.asset(Images.delete),
      );

  void showWarning(String message) => _showSnackBar(
        message: message,
        backgroundColor: Colors.orange.withAlpha(5),
        icon: const Icon(Icons.warning, color: Colors.white),
      );

  void showInfo(String message) => _showSnackBar(
        message: message,
        backgroundColor: Colors.blue.withAlpha(5),
        icon: const Icon(Icons.info, color: Colors.white),
      );

  void _showSnackBar({
    required String message,
    required Color backgroundColor,
    Widget? icon,
    Duration duration = const Duration(seconds: 2),
    SnackBarAction? action,
  }) {
    final messenger = messengerKey.currentState;

    if (messenger == null) {
      log('SnackBarService: messengerKey.currentState is null');
      return;
    }

    messenger.clearSnackBars();

    final snackBar = SnackBar(
      content: Row(
        children: [
          if (icon != null) ...[icon, const SizedBox(width: 8)],
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                fontFamily: 'Be Vietnam Pro',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: TzColors.text,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      duration: duration,
      action: action,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );

    messenger.showSnackBar(snackBar);
  }

  void showCustomSnackBar(
    BuildContext context, {
    required String message,
    Color? backgroundColor,
    Widget? icon,
    Duration? duration,
    SnackBarAction? action,
    SnackBarBehavior? behavior,
    EdgeInsets? margin,
    double? width,
  }) {}
}
