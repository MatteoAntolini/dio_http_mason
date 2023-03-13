import '../models/{{name.snakeCase()}}.dart';
import '{{name.snakeCase()}}s_repository.dart';
import 'request/create_{{name.snakeCase()}}_request.dart';
import 'request/delete_{{name.snakeCase()}}_request.dart';
import 'request/get_{{name.snakeCase()}}_request.dart';
import 'request/get_{{name.snakeCase()}}s_request.dart';
import 'request/update_{{name.snakeCase()}}_request.dart';
import 'response/create_{{name.snakeCase()}}_response.dart';
import 'response/delete_{{name.snakeCase()}}_response.dart';
import 'response/get_{{name.snakeCase()}}_response.dart';
import 'response/get_{{name.snakeCase()}}s_response.dart';
import 'response/update_{{name.snakeCase()}}_response.dart';
import 'package:dio_http_client/network/app_http_client.dart';
import 'package:dio_http_client/network/success_response.dart';
import 'package:dio_http_client/network/error_response.dart';
import 'package:dartz/dartz.dart';

class {{name.pascalCase()}}sRepositoryImpl extends {{name.pascalCase()}}sRepository {
  {{name.pascalCase()}}sRepositoryImpl(AppHttpClient remoteDataSource)
      : super(remoteDataSource);

  @override
  Future<Either<ErrorResponse, SuccessResponse<{{name.pascalCase()}}>>> create{{name.pascalCase()}}(
      {required Map<String, dynamic> data}) async {
    final response = await dataSource.retrieveData<Create{{name.pascalCase()}}Response>(
        Create{{name.pascalCase()}}Request(data: data));

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse<List<{{name.pascalCase()}}>>>>
      get{{name.pascalCase()}}s() async {
    final response = await dataSource
        .retrieveData<Get{{name.pascalCase()}}sResponse>(Get{{name.pascalCase()}}sRequest());

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse>> delete{{name.pascalCase()}}(
      {required String {{name.camelCase()}}Id}) async {
    final response = await dataSource.retrieveData<Delete{{name.pascalCase()}}Response>(
        Delete{{name.pascalCase()}}Request({{name.camelCase()}}Id: {{name.camelCase()}}Id));

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse<{{name.pascalCase()}}>>> get{{name.pascalCase()}}(
      {required String {{name.camelCase()}}Id}) async {
    final response = await dataSource.retrieveData<Get{{name.pascalCase()}}Response>(
        Get{{name.pascalCase()}}Request({{name.camelCase()}}Id: {{name.camelCase()}}Id));

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse>> update{{name.pascalCase()}}(
      {required String {{name.camelCase()}}Id, required Map<String, dynamic> data}) async {
    final response = await dataSource.retrieveData<Update{{name.pascalCase()}}Response>(
        Update{{name.pascalCase()}}Request({{name.camelCase()}}Id: {{name.camelCase()}}Id, data: data));

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }
}
