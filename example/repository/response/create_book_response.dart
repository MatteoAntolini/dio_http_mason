import '../../models/book.dart';
import 'package:dio_http_client/network/api_response.dart';

class CreateBookResponse extends ApiResponse {
  CreateBookResponse._({required Book body}) : super(body: body);

  factory CreateBookResponse.fromMap(Map<String, dynamic> data) {
    return CreateBookResponse._(body: Book.fromMap(data));
  }
}
