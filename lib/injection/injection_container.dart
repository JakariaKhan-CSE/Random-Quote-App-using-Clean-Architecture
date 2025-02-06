import 'package:clean_architecture/features/random_quote/domain/usecases/get_random_quote.dart';
import 'package:clean_architecture/features/random_quote/presentation/state/quote_cubit.dart';
import 'package:get_it/get_it.dart';

import '../features/random_quote/data/repositories/quote_repository_impl.dart';
import '../features/random_quote/domain/repositories/quote_repository.dart';

final sl = GetIt.instance;

void init() {
  // Cubit
  sl.registerFactory(() => QuoteCubit(sl()));

  // Use Case
  sl.registerLazySingleton(() => GetRandomQuote(sl()),);

  // Repository
  sl.registerLazySingleton<QuoteRepository>(
          () => QuoteRepositoryImpl(sl()));
}
