import 'package:clean_architecture/core/error/failures.dart';
import 'package:clean_architecture/features/random_quote/domain/entities/quote.dart';
import 'package:clean_architecture/features/random_quote/domain/repositories/quote_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomQuote {
  final QuoteRepository repository;
  GetRandomQuote(this.repository);

  Future<Either<Failure, Quote>> call(){
    return repository.getRandomQuote();
  }
}