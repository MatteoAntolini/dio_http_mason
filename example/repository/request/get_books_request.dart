import '../response/get_books_response.dart';
import '../../utils/books_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class GetBooksRequest extends ApiRequest {
  GetBooksRequest()
      : super(
            baseUrl: BooksConstants.domain,
            endPoint: BooksConstants.booksEndpoint,
            method: RestMethod.get,
            decoder: (data) => GetBooksResponse.fromMap(data));
}
