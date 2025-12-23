import 'package:dartz/dartz.dart';
import 'package:stock_investment_app/core/error/failures.dart';
import 'package:stock_investment_app/features/support/data/models/support_model.dart';

abstract class SupportRepository {
  Future<Either<Failure, void>> sendMessage(Stock model);
}
