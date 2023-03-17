import '../response/create_book_response.dart';
import '../../utils/books_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class CreateBookRequest extends ApiRequest {
  final Map<String, dynamic> data;

  CreateBookRequest({required this.data})
      : super(
            baseUrl: BooksConstants.domain,
            endPoint: BooksConstants.booksEndpoint,
            method: RestMethod.post,
            decoder: (data) => CreateBookResponse.fromMap(Map<String, dynamic>.from(data)));

  @override
  Map<String, dynamic> get body => data;
}
