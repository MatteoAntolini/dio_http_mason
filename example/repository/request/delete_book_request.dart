import '../response/delete_book_response.dart';
import '../../utils/books_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class DeleteBookRequest extends ApiRequest {
  DeleteBookRequest({required String bookId})
      : super(
            baseUrl: BooksConstants.domain,
            endPoint: "${BooksConstants.booksEndpoint}/$bookId",
            method: RestMethod.delete,
            decoder: (data) => DeleteBookResponse.fromMap(Map<String, dynamic>.from(data)));
}
