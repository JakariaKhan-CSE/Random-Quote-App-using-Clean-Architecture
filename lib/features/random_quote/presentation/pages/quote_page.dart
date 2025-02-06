import 'package:clean_architecture/features/random_quote/presentation/state/quote_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/quote_display.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Quote')),
      body: BlocBuilder<QuoteCubit, QuoteState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          else if(state.quote != null){
            return QuoteDisplay(quote: state.quote!);
          }else if(state.error != null)
            {
              return Center(child: Text(state.error!));
            }
          
          return Center(
            child: ElevatedButton(onPressed: ()=>context.read<QuoteCubit>().fetchRandomQuote(), child: Text('Fetch Random Quote'),),
          );
        },
      ),
    );
  }
}
