import '../models/book.dart';
import 'books_repository.dart';
import 'request/create_book_request.dart';
import 'request/delete_book_request.dart';
import 'request/get_book_request.dart';
import 'request/get_books_request.dart';
import 'request/update_book_request.dart';
import 'response/create_book_response.dart';
import 'response/delete_book_response.dart';
import 'response/get_book_response.dart';
import 'response/get_books_response.dart';
import 'response/update_book_response.dart';
import 'package:dio_http_client/network/app_http_client.dart';
import 'package:dio_http_client/network/success_response.dart';
import 'package:dio_http_client/network/error_response.dart';
import 'package:dartz/dartz.dart';

class BooksRepositoryImpl extends BooksRepository {
  BooksRepositoryImpl(AppHttpClient remoteDataSource)
      : super(remoteDataSource);

  @override
  Future<Either<ErrorResponse, SuccessResponse<Book>>> createBook(
      {required Map<String, dynamic> data}) async {
    final response = await dataSource.retrieveData<CreateBookResponse>(
        CreateBookRequest(data: data));

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse<List<Book>>>>
      getBooks() async {
    final response = await dataSource
        .retrieveData<GetBooksResponse>(GetBooksRequest());

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse>> deleteBook(
      {required String bookId}) async {
    final response = await dataSource.retrieveData<DeleteBookResponse>(
        DeleteBookRequest(bookId: bookId));

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse<Book>>> getBook(
      {required String bookId}) async {
    final response = await dataSource.retrieveData<GetBookResponse>(
        GetBookRequest(bookId: bookId));

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }

  @override
  Future<Either<ErrorResponse, SuccessResponse>> updateBook(
      {required String bookId, required Map<String, dynamic> data}) async {
    final response = await dataSource.retrieveData<UpdateBookResponse>(
        UpdateBookRequest(bookId: bookId, data: data));

    return response.fold(
        (error) => Left(error),
        (success) =>
            Right(SuccessResponse(success.statusCode, success.data.body)));
  }
}
