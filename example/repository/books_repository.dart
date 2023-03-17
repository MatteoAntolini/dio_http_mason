import '../models/book.dart';
import 'package:dartz/dartz.dart';
import 'package:dio_http_client/network/app_http_client.dart';
import 'package:dio_http_client/network/error_response.dart';
import 'package:dio_http_client/network/success_response.dart';
import 'package:dio_http_client/repository/remote_repository.dart';

abstract class BooksRepository extends RemoteRepository {
  BooksRepository(AppHttpClient remoteDataSource) : super(remoteDataSource);

  Future<Either<ErrorResponse, SuccessResponse<List<Book>>>> getBooks();

  Future<Either<ErrorResponse, SuccessResponse<Book>>> createBook(
      {required Map<String, dynamic> data});

  Future<Either<ErrorResponse, SuccessResponse<Book>>> getBook(
      {required String bookId});

  Future<Either<ErrorResponse, SuccessResponse>> deleteBook(
      {required String bookId});

  Future<Either<ErrorResponse, SuccessResponse>> updateBook(
      {required String bookId, required Map<String, dynamic> data});
}
