import '../response/get_book_response.dart';
import '../../utils/books_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class GetBookRequest extends ApiRequest {
  GetBookRequest({required String bookId})
      : super(
            baseUrl: BooksConstants.domain,
            endPoint: "${BooksConstants.booksEndpoint}/$bookId",
            method: RestMethod.get,
            decoder: (data) => GetBookResponse.fromMap(Map<String, dynamic>.from(data)));
}
