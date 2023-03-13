import '../response/get_{{name.snakeCase()}}_response.dart';
import '../../utils/{{name.snakeCase()}}s_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class Get{{name.pascalCase()}}Request extends ApiRequest {
  Get{{name.pascalCase()}}Request({required String {{name.camelCase()}}Id})
      : super(
            baseUrl: {{name.pascalCase()}}sConstants.domain,
            endPoint: "${{{name.pascalCase()}}sConstants.{{name.camelCase()}}sEndpoint}/${{name.camelCase()}}Id",
            method: RestMethod.get,
            decoder: (data) => Get{{name.pascalCase()}}Response.fromMap(Map<String, dynamic>.from(data)));
}
