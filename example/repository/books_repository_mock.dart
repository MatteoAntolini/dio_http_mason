import 'dart:convert';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio_http_client/network/app_http_client.dart';
import 'package:dio_http_client/network/success_response.dart';
import 'package:dio_http_client/network/error_response.dart';
import 'package:flutter/services.dart';

import '../models/book.dart';
import 'books_repository.dart';

class BooksRepositoryMock extends BooksRepository {
  BooksRepositoryMock(AppHttpClient remoteDataSource)
      : super(remoteDataSource);

  @override
  Future<Either<ErrorResponse, SuccessResponse<Book>>> createBook(
      {required Map<String, dynamic> data}) async {
    data["id"] = Random().nextInt(10000).toString();
    // await Future.delayed(Duration(seconds: 2));
    var response = Right(SuccessResponse(100, Book.fromMap(data)));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse>> deleteBook(
      {required String bookId}) async {
    // await Future.delayed(Duration(seconds: 2));
    var response = Right(SuccessResponse(100, null));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse<Book>>> getBook(
      {required String bookId}) async {
    String jsonString =
        await rootBundle.loadString('mocks/books/get_book.json');
    // await Future.delayed(Duration(seconds: 2));
    final decodedJson = json.decode(jsonString);
    var response = Right(SuccessResponse(100, Book.fromMap(decodedJson)));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse<List<Book>>>> getBooks() async {
    String jsonString =
        await rootBundle.loadString('mocks/books/get_books.json');
    // await Future.delayed(Duration(seconds: 2));
    final decodedJson = json.decode(jsonString);
    var response = Right(SuccessResponse(
        100, List<Book>.from(decodedJson.map((json) => Book.fromMap(json)))));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse>> updateBook(
      {required String bookId, required Map<String, dynamic> data}) async {
    // await Future.delayed(Duration(seconds: 2));
    data["id"] = bookId;
    var response = Right(SuccessResponse(100, Book.fromMap(data)));
    return await response.fold((l) {
      return Left(ErrorResponse(500, "Error", "ERROR"));
    }, (r) {
      return Right(r);
    });
  }
}
