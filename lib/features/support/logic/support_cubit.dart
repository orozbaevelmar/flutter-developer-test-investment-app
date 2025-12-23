import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_investment_app/core/utils/wrapped.dart';
import 'package:stock_investment_app/features/support/data/models/support_model.dart';
import 'package:stock_investment_app/features/support/domain/repositories/support_repository.dart';

part 'support_state.dart';

@injectable
class SupportCubit extends Cubit<SupportState> {
  final SupportRepository _supportRepository;
  SupportCubit(this._supportRepository) : super(SupportState());

  void updateIssueType(String? issueType) =>
      emit(state.copyWith(issueType: Wrapped.value(issueType)));

  void updateMessage(String? message) =>
      emit(state.copyWith(message: Wrapped.value(message)));

  void updateOrderId(String? orderId) =>
      emit(state.copyWith(orderId: Wrapped.value(orderId)));

  Future<void> sendMessage(
    String email,
    String phoneNumber,
    String name,
  ) async {
    emit(state.copyWith(status: FetchStatus.loading));

    final supportModel = Stock(
        symbol: 'symbol',
        name: 'name',
        price: 23,
        changePercentage: 2.2,
        logoUrl: 'logoUrl');

    final response = await _supportRepository.sendMessage(supportModel);
    response.fold(
      (l) {
        emit(
          state.copyWith(status: FetchStatus.error, errorMessage: l.message),
        );
      },
      (r) {
        emit(state.copyWith(status: FetchStatus.success));
      },
    );
  }
}
