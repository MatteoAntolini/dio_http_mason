import '../response/delete_{{name.snakeCase()}}_response.dart';
import '../../utils/{{name.snakeCase()}}s_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class Delete{{name.pascalCase()}}Request extends ApiRequest {
  Delete{{name.pascalCase()}}Request({required String {{name.camelCase()}}Id})
      : super(
            baseUrl: {{name.pascalCase()}}sConstants.domain,
            endPoint: "${{{name.pascalCase()}}sConstants.{{name.camelCase()}}sEndpoint}/${{name.camelCase()}}Id",
            method: RestMethod.delete,
            decoder: (data) => Delete{{name.pascalCase()}}Response.fromMap(Map<String, dynamic>.from(data)));
}
