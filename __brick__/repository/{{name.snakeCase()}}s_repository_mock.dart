import 'dart:convert';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio_http_client/network/app_http_client.dart';
import 'package:dio_http_client/network/success_response.dart';
import 'package:dio_http_client/network/error_response.dart';
import 'package:flutter/services.dart';

import '../models/{{name.snakeCase()}}.dart';
import '{{name.snakeCase()}}s_repository.dart';

class {{name.pascalCase()}}sRepositoryMock extends {{name.pascalCase()}}sRepository {
  {{name.pascalCase()}}sRepositoryMock(AppHttpClient remoteDataSource)
      : super(remoteDataSource);

  @override
  Future<Either<ErrorResponse, SuccessResponse<{{name.pascalCase()}}>>> create{{name.pascalCase()}}(
      {required Map<String, dynamic> data}) async {
    data["id"] = Random().nextInt(10000).toString();
    // await Future.delayed(Duration(seconds: 2));
    var response = Right(SuccessResponse(100, {{name.pascalCase()}}.fromMap(data)));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse>> delete{{name.pascalCase()}}(
      {required String {{name.camelCase()}}Id}) async {
    // await Future.delayed(Duration(seconds: 2));
    var response = Right(SuccessResponse(100, null));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse<{{name.pascalCase()}}>>> get{{name.pascalCase()}}(
      {required String {{name.camelCase()}}Id}) async {
    String jsonString =
        await rootBundle.loadString('mocks/{{name.snakeCase()}}s/get_{{name.snakeCase()}}.json');
    // await Future.delayed(Duration(seconds: 2));
    final decodedJson = json.decode(jsonString);
    var response = Right(SuccessResponse(100, {{name.pascalCase()}}.fromMap(decodedJson)));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse<List<{{name.pascalCase()}}>>>> get{{name.pascalCase()}}s() async {
    String jsonString =
        await rootBundle.loadString('mocks/{{name.snakeCase()}}s/get_{{name.snakeCase()}}s.json');
    // await Future.delayed(Duration(seconds: 2));
    final decodedJson = json.decode(jsonString);
    var response = Right(SuccessResponse(
        100, List<{{name.pascalCase()}}>.from(decodedJson.map((json) => {{name.pascalCase()}}.fromMap(json)))));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse>> update{{name.pascalCase()}}(
      {required String {{name.camelCase()}}Id, required Map<String, dynamic> data}) async {
    // await Future.delayed(Duration(seconds: 2));
    data["id"] = {{name.camelCase()}}Id;
    var response = Right(SuccessResponse(100, {{name.pascalCase()}}.fromMap(data)));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }
}
