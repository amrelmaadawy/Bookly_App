import 'package:bookly_app/Features/home/data/model/book_modle/book_modle.dart';
import 'package:bookly_app/Features/home/data/repos/homeRepo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class homeRepoImpl implements homeRepo
{
  @override
  Future<Either<failure, List<BookModle>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<failure, List<BookModle>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
  
}