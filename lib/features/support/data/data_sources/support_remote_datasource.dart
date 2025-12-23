import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_investment_app/core/constants/api_constants.dart';
import 'package:stock_investment_app/core/error/exceptions.dart';
import 'package:stock_investment_app/core/error/failures.dart';
import 'package:stock_investment_app/core/network/api_consumer.dart';
import 'package:stock_investment_app/core/utils/error_utils.dart';
import 'package:stock_investment_app/features/support/data/models/support_model.dart';

const _tag = " [ SupportRemoteDataSource ]";

abstract class SupportRemoteDataSource {
  Future<void> sendMessage(Stock model);
}

@LazySingleton(as: SupportRemoteDataSource)
class SupportRemoteDataSourceImpl implements SupportRemoteDataSource {
  final ApiConsumer _mainApiConsumer;

  SupportRemoteDataSourceImpl(
    @Named(ApiConstants.authenticatedConsumer) this._mainApiConsumer,
  );

  @override
  Future<void> sendMessage(Stock model) async {
    try {
      log("$_tag, <sendMessage()> Starting request, MODEL=${model.toJson()}");
      final response = await _mainApiConsumer.post(
        ApiConstants.support,
        data: model.toJson(),
      );
      log("$_tag, <sendMessage()> Response received: ${response.data}");

      if (response.statusCode != 201) {
        throw ServerException('Failed to send Message: ${response.statusCode}');
      }
    } on DioException catch (res) {
      log("$_tag, <sendMessage()> DioError: ${res.message}");
      log("$_tag, <sendMessage()> DioError Response: ${res.response?.data}");
      throw FetchDataException(ErrorUtils.handleApiError(res.response?.data));
    } catch (e) {
      log("$_tag, <sendMessage()> Error: $e");
      throw ServerFailure(message: e.toString());
    }
  }
}
