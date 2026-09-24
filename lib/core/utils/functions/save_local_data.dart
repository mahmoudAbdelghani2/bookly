import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveDataLocal({required List<BookEntity> books, required String boxName}) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
