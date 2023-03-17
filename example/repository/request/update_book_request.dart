import '../response/update_book_response.dart';
import '../../utils/books_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class UpdateBookRequest extends ApiRequest {
  final String bookId;
  final Map<String, dynamic> data;

  UpdateBookRequest({required this.bookId, required this.data})
      : super(
            baseUrl: BooksConstants.domain,
            endPoint: "${BooksConstants.booksEndpoint}/$bookId",
            method: RestMethod.put,
            decoder: (data) => UpdateBookResponse.fromMap(
                Map<String, dynamic>.from(data)));

  @override
  Map<String, dynamic> get body => data;
}
