import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_investment_app/core/extensions/context_extension.dart';
import 'package:stock_investment_app/core/presentation/widgets/separator.dart';
import 'package:stock_investment_app/core/theme/app_theme.dart';
import 'package:stock_investment_app/core/theme/load_board_colors.dart';
import 'package:stock_investment_app/features/support/logic/support_cubit.dart';
import 'package:stock_investment_app/features/support/widgets/nav_bard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final noteCtrl = TextEditingController();
  late final FocusNode _noteFocusNode;

  @override
  void initState() {
    super.initState();
    _noteFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.loadBoardTheme;

    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(kToolbarHeight),
      //   child: BuildHeader(title: 'Support'),
      // ),

      backgroundColor: TzColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(appTheme.scaledSize(20)),
          child: Column(
            children: [
              Navbar(),
              _buildBody(appTheme),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _buildBody(LoadBoardTheme appTheme) {
    return SingleChildScrollView(
      child: BlocBuilder<SupportCubit, SupportState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Issue type',
                style: appTheme.baseStrong.copyWith(
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF002D60).withValues(alpha: 0.65),
                ),
              ),
              Separator.forColumn(appTheme.scaledSize(6)),
            ],
          );
        },
      ),
    );
  }
}
