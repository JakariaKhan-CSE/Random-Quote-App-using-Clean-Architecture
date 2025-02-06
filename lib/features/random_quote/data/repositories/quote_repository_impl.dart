import 'package:clean_architecture/core/error/exceptions.dart';
import 'package:clean_architecture/core/error/failures.dart';
import 'package:clean_architecture/features/random_quote/data/datasources/quote_remote_datasource.dart';
import 'package:clean_architecture/features/random_quote/domain/entities/quote.dart';
import 'package:clean_architecture/features/random_quote/domain/repositories/quote_repository.dart';
import 'package:dartz/dartz.dart';

class QuoteRepositoryImpl implements QuoteRepository{
  final QuoteRemoteDataSource remoteDataSource;

  QuoteRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, Quote>> getRandomQuote()async{
    try{
      final quote = await remoteDataSource.getRandomQuote();

      return Right(quote);
    }on ServerException{
      return Left(ServerFailure());
    }
  }
}