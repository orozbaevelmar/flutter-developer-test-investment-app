import 'package:flutter/material.dart';
import 'package:stock_investment_app/core/constants/string_constants.dart';
import 'package:stock_investment_app/core/extensions/context_extension.dart';
import 'package:stock_investment_app/core/presentation/widgets/separator.dart';
import 'package:stock_investment_app/core/theme/load_board_colors.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = context.loadBoardTheme;
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: appTheme.paddingS, vertical: appTheme.paddingXS),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _NavbarButton(
              icon: Icons.arrow_back,
              onTap: () {},
            ),
            Separator.forRow(appTheme.scaledSize(20)),
            Text(
              StringConstants.stockInvestments,
              textAlign: TextAlign.center,
              style: appTheme.LGStrong.copyWith(
                  fontSize: appTheme.scaledSize(18),
                  color: TzColors.black,
                  letterSpacing: appTheme.scaledSize(-0.18)),
            ),
            Separator.forRow(appTheme.scaledSize(16)),
            _NavbarButton(
              icon: Icons.notifications_none,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _NavbarButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _NavbarButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final appTheme = context.loadBoardTheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(36),
      child: Container(
        width: appTheme.scaledSize(40),
        height: appTheme.scaledSize(40),
        decoration: BoxDecoration(
          color: TzColors.black.withValues(alpha: 0.08),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: appTheme.scaledSize(20), color: TzColors.black),
      ),
    );
  }
}
