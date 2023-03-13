import '../../models/{{name.snakeCase()}}.dart';
import 'package:dio_http_client/network/api_response.dart';

class Create{{name.pascalCase()}}Response extends ApiResponse {
  Create{{name.pascalCase()}}Response._({required {{name.pascalCase()}} body}) : super(body: body);

  factory Create{{name.pascalCase()}}Response.fromMap(Map<String, dynamic> data) {
    return Create{{name.pascalCase()}}Response._(body: {{name.pascalCase()}}.fromMap(data));
  }
}
