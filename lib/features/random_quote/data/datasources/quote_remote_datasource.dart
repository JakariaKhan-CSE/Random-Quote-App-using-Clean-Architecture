import 'package:clean_architecture/core/error/exceptions.dart';
import 'package:clean_architecture/core/utils/constants.dart';
import 'package:clean_architecture/features/random_quote/data/model/quote_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
abstract class QuoteRemoteDataSource {
  Future<QuoteModel> getRandomQuote();
}

class QuoteRemoteDataSourceImpl  implements QuoteRemoteDataSource{
  final http.Client client;

  QuoteRemoteDataSourceImpl(this.client);

  @override
  Future<QuoteModel> getRandomQuote() async{
    final response = await client.get(Uri.parse('$baseUrl/random'));

    if(response.statusCode == 200)
      {
        return QuoteModel.fromJson(jsonDecode(response.body));
      }
    else{
      throw ServerException();
    }

  }

}