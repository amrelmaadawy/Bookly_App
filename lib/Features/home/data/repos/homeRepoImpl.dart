import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/apiService.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class homeRepoImpl implements HomeRepo {
  final ApiService apiService;
  homeRepoImpl(this.apiService);
  @override
  Future<Either<failure, List<BookModle>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Sortling=newest&q=programming&filtering=free-ebooks');
      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }

  @override
  Future<Either<failure, List<BookModle>>> fetchFeatureBooks() async{
   try {
      var data = await apiService.get(
          endPoint: 'volumes?q=programming&filtering=free-ebooks');
      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(e.toString()));
    }
  }
}
