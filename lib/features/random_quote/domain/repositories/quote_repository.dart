import 'package:clean_architecture/core/error/failures.dart';
import 'package:clean_architecture/features/random_quote/domain/entities/quote.dart';
import 'package:dartz/dartz.dart';

abstract class QuoteRepository{
  Future<Either<Failure, Quote>> getRandomQuote();
}