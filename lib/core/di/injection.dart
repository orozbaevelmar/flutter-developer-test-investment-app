import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:stock_investment_app/core/loggers/log.dart';
import 'package:stock_investment_app/core/loggers/log_message.dart';
import 'package:stock_investment_app/core/di/injection.config.dart';

final getIt = GetIt.instance;

@injectable.InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies(String env) async {
  Log.i(
    LogMessage(appVersion: Log.appVersion, eventName: LogMessage.getItInit),
  );
  await $initGetIt(getIt, environment: env);
}
