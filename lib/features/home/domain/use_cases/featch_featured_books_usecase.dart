import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:bookly/features/home/domain/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooksUsecase extends UseCase<List<BookEntity>, NoParams> {
  final HomeRepo homeRepo;

  FeatchFeaturedBooksUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParams? params]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
