import '../../models/{{name.snakeCase()}}.dart';
import 'package:dio_http_client/network/api_response.dart';

class Get{{name.pascalCase()}}sResponse extends ApiResponse {
  Get{{name.pascalCase()}}sResponse._({required List<{{name.pascalCase()}}> body}) : super(body: body);

  factory Get{{name.pascalCase()}}sResponse.fromMap(List data) {
    return Get{{name.pascalCase()}}sResponse._(
        body: data
            .map(({{name.camelCase()}}Data) =>
                {{name.pascalCase()}}.fromMap(Map<String, dynamic>.from({{name.camelCase()}}Data)))
            .toList());
  }
}
