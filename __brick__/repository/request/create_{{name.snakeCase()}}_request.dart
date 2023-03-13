import '../response/create_{{name.snakeCase()}}_response.dart';
import '../../utils/{{name.snakeCase()}}s_constants.dart';

import 'package:dio_http_client/network/api_request.dart';
import 'package:dio_http_client/network/rest_method.dart';

class Create{{name.pascalCase()}}Request extends ApiRequest {
  final Map<String, dynamic> data;

  Create{{name.pascalCase()}}Request({required this.data})
      : super(
            baseUrl: {{name.pascalCase()}}sConstants.domain,
            endPoint: {{name.pascalCase()}}sConstants.{{name.camelCase()}}sEndpoint,
            method: RestMethod.post,
            decoder: (data) => Create{{name.pascalCase()}}Response.fromMap(Map<String, dynamic>.from(data)));

  @override
  Map<String, dynamic> get body => data;
}
