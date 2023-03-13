import '../response/update_{{name.snakeCase()}}_response.dart';
import '../../utils/{{name.snakeCase()}}s_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class Update{{name.pascalCase()}}Request extends ApiRequest {
  final String {{name.camelCase()}}Id;
  final Map<String, dynamic> data;

  Update{{name.pascalCase()}}Request({required this.{{name.camelCase()}}Id, required this.data})
      : super(
            baseUrl: {{name.pascalCase()}}sConstants.domain,
            endPoint: "${{{name.pascalCase()}}sConstants.{{name.camelCase()}}sEndpoint}/${{name.camelCase()}}Id",
            method: RestMethod.put,
            decoder: (data) => Update{{name.pascalCase()}}Response.fromMap(
                Map<String, dynamic>.from(data)));

  @override
  Map<String, dynamic> get body => data;
}
