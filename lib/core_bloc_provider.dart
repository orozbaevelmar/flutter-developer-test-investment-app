import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_investment_app/core/di/injection.dart';
import 'package:stock_investment_app/features/support/logic/support_cubit.dart';

class CoreBlocProvider extends StatelessWidget {
  const CoreBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SupportCubit>()),
      ],
      child: child,
    );
  }
}
