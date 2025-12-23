import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_investment_app/core/error/failures.dart';
import 'package:stock_investment_app/features/support/data/data_sources/support_remote_datasource.dart';
import 'package:stock_investment_app/features/support/data/models/support_model.dart';
import 'package:stock_investment_app/features/support/domain/repositories/support_repository.dart';

const _tag = " [SupportRepository] ";

@Injectable(as: SupportRepository)
class SupportRepositoryImpl implements SupportRepository {
  final SupportRemoteDataSource remoteDataSource;

  SupportRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, void>> sendMessage(Stock model) async {
    try {
      await remoteDataSource.sendMessage(model);
      log("$_tag, <sendMessage()>");

      return Right(null);
    } catch (e) {
      log("$_tag, <sendMessage()> error: $e");
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
