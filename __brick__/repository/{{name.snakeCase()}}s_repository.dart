import '../models/{{name.snakeCase()}}.dart';
import 'package:dartz/dartz.dart';
import 'package:dio_http_client/network/app_http_client.dart';
import 'package:dio_http_client/network/error_response.dart';
import 'package:dio_http_client/network/success_response.dart';
import 'package:dio_http_client/repository/remote_repository.dart';

abstract class {{name.pascalCase()}}sRepository extends RemoteRepository {
  {{name.pascalCase()}}sRepository(AppHttpClient remoteDataSource) : super(remoteDataSource);

  Future<Either<ErrorResponse, SuccessResponse<List<{{name.pascalCase()}}>>>> get{{name.pascalCase()}}s();

  Future<Either<ErrorResponse, SuccessResponse<{{name.pascalCase()}}>>> create{{name.pascalCase()}}(
      {required Map<String, dynamic> data});

  Future<Either<ErrorResponse, SuccessResponse<{{name.pascalCase()}}>>> get{{name.pascalCase()}}(
      {required String {{name.camelCase()}}Id});

  Future<Either<ErrorResponse, SuccessResponse>> delete{{name.pascalCase()}}(
      {required String {{name.camelCase()}}Id});

  Future<Either<ErrorResponse, SuccessResponse>> update{{name.pascalCase()}}(
      {required String {{name.camelCase()}}Id, required Map<String, dynamic> data});
}
