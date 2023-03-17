import '../../models/book.dart';
import 'package:dio_http_client/network/api_response.dart';

class GetBooksResponse extends ApiResponse {
  GetBooksResponse._({required List<Book> body}) : super(body: body);

  factory GetBooksResponse.fromMap(List data) {
    return GetBooksResponse._(
        body: data
            .map((bookData) =>
                Book.fromMap(Map<String, dynamic>.from(bookData)))
            .toList());
  }
}
