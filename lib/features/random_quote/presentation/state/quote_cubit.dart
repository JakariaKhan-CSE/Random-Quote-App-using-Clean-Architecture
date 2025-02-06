import 'package:clean_architecture/features/random_quote/domain/entities/quote.dart';
import 'package:clean_architecture/features/random_quote/domain/usecases/get_random_quote.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuoteState {
  final bool isLoading;
  final Quote? quote;
  final String? error;

  QuoteState({this.isLoading = false, this.quote, this.error});

}

class QuoteCubit extends Cubit<QuoteState>{
  final GetRandomQuote getRandomQuote;

  QuoteCubit(this.getRandomQuote):super(QuoteState());

  void fetchRandomQuote()async{
    emit(QuoteState(isLoading: true));
    final result = await getRandomQuote();
    result.fold((failure)=>emit(QuoteState(error: 'Failed to fetch quote')), (quote)=>emit(QuoteState(quote: quote)));
  }
}