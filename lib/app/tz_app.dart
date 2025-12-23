import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:stock_investment_app/core/di/injection.dart';
import 'package:stock_investment_app/core/loggers/log.dart';
import 'package:stock_investment_app/core/loggers/log_message.dart';
import 'package:stock_investment_app/core/theme/app_theme.dart';
import 'package:stock_investment_app/core/utils/snackbar_service.dart';
import 'package:stock_investment_app/core_bloc_provider.dart';
import 'package:stock_investment_app/features/support/screens/support.dart';

class TzApp extends StatelessWidget {
  const TzApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final snackBarService = getIt<SnackBarService>();

    Log.i(
      LogMessage(
        appVersion: Log.appVersion,
        eventName: LogMessage.mainAppStart,
      ),
    );
    return CoreBlocProvider(
      child: ChangeNotifierProvider(
        create: (BuildContext context) => LoadBoardTheme(),
        child: Consumer<LoadBoardTheme>(
          builder: (_, loadBoardTheme, __) {
            return MaterialApp(
              theme: loadBoardTheme.appTheme,
              debugShowCheckedModeBanner: false,
              scaffoldMessengerKey: snackBarService.messengerKey,
              home: const HomeScreen(),
            );
          },
        ),
      ),
    );
  }
}
