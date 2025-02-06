import 'package:clean_architecture/features/random_quote/domain/entities/quote.dart';
import 'package:flutter/material.dart';

class QuoteDisplay  extends StatelessWidget {
  final Quote quote;
  const QuoteDisplay({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Text(quote.text,style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
          SizedBox(height: 20),
          Text('-${quote.author}',style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}
