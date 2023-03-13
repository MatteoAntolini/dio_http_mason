import '../response/get_{{name.snakeCase()}}s_response.dart';
import '../../utils/{{name.snakeCase()}}s_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class Get{{name.pascalCase()}}sRequest extends ApiRequest {
  Get{{name.pascalCase()}}sRequest()
      : super(
            baseUrl: {{name.pascalCase()}}sConstants.domain,
            endPoint: {{name.pascalCase()}}sConstants.{{name.camelCase()}}sEndpoint,
            method: RestMethod.get,
            decoder: (data) => Get{{name.pascalCase()}}sResponse.fromMap(data));
}
