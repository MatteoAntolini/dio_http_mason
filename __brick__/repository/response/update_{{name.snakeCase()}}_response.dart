import 'package:dio_http_client/network/api_response.dart';
import '../../models/{{name.snakeCase()}}.dart';

class Update{{name.pascalCase()}}Response extends ApiResponse {
  Update{{name.pascalCase()}}Response._({required {{name.pascalCase()}} body}) : super(body: body);

  factory Update{{name.pascalCase()}}Response.fromMap(Map<String, dynamic> data) {
    return Update{{name.pascalCase()}}Response._(body: {{name.pascalCase()}}.fromMap(data));
  }
}
