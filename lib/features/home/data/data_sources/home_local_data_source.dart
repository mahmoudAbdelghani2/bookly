import 'package:bookly/core/utils/consts.dart';
import 'package:bookly/features/home/data/data_sources/contract.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kFeaturedBox);
    int length = box.values.length;
    List<BookEntity> books = box.values.toList().sublist(
        startIndex > length ? length : startIndex,
        endIndex > length ? length : endIndex);
    return books;
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBooksBox);
    List<BookEntity> books = box.values.toList();
    return books;
  }
}
