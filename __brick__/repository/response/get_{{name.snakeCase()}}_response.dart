import '../../models/{{name.snakeCase()}}.dart';
import 'package:dio_http_client/network/api_response.dart';

class Get{{name.pascalCase()}}Response extends ApiResponse {
  Get{{name.pascalCase()}}Response._({required {{name.pascalCase()}} body}) : super(body: body);

  factory Get{{name.pascalCase()}}Response.fromMap(Map<String, dynamic> data) {
    return Get{{name.pascalCase()}}Response._(body: {{name.pascalCase()}}.fromMap(data));
  }
}
