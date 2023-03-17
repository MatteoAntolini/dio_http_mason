import 'package:dio_http_client/network/api_response.dart';
import '../../models/book.dart';

class UpdateBookResponse extends ApiResponse {
  UpdateBookResponse._({required Book body}) : super(body: body);

  factory UpdateBookResponse.fromMap(Map<String, dynamic> data) {
    return UpdateBookResponse._(body: Book.fromMap(data));
  }
}
