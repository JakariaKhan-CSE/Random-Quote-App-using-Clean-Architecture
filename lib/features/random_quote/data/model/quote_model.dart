import 'package:clean_architecture/features/random_quote/domain/entities/quote.dart';

class QuoteModel extends Quote{
  QuoteModel({required String text, required String author}):
      super(text: text, author: author);

  factory QuoteModel.fromJson(Map<String, dynamic> json){
    return QuoteModel(text: json['content'],
        author: json['author']);
    
  }
}