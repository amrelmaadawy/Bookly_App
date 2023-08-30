import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<failure,List<BookModle>>> fetchBestSellerBooks();
 Future<Either<failure,List<BookModle>>> fetchFeatureBooks();
}
