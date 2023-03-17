import '../../models/book.dart';
import 'package:dio_http_client/network/api_response.dart';

class GetBookResponse extends ApiResponse {
  GetBookResponse._({required Book body}) : super(body: body);

  factory GetBookResponse.fromMap(Map<String, dynamic> data) {
    return GetBookResponse._(body: Book.fromMap(data));
  }
}
