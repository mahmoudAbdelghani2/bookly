import 'dart:developer';

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_sources/contract.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource localDataSource;
  final HomeRemoteDataSource remoteDataSource;

  HomeRepoImpl({required this.localDataSource, required this.remoteDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var localBooks = localDataSource.fetchFeaturedBooks();
      if (localBooks.isNotEmpty) {
        return Right(localBooks);
      }
      var remoteBooks = await remoteDataSource.fetchFeaturedBooks();
      return Right(remoteBooks);
    } catch (e) {
      log(e.toString());
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var localBooks = localDataSource.fetchNewestBooks();
      if (localBooks.isNotEmpty) {
        return Right(localBooks);
      }
      var remoteBooks = await remoteDataSource.fetchNewestBooks();
      return Right(remoteBooks);
    } catch (e) {
      log(e.toString());
      return Left(Failure());
    }
  }
}
