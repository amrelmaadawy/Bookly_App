import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/apiService.dart';
import 'package:dartz/dartz.dart';

class homeRepoImpl implements homeRepo {
  final ApiService apiService;
  homeRepoImpl(this.apiService);
  @override
  Future<Either<failure, List<BookModle>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject: programming');
      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      
      }
        return right(books);
    } on Exception catch (e) {
      return left(serverFailure());
    }
  }

  @override
  Future<Either<failure, List<BookModle>>> fetchFeatureBooks() {
    throw UnimplementedError();
  }
}
