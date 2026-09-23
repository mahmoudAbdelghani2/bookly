import 'package:bookly/core/utils/api_consumer.dart';
import 'package:bookly/features/home/data/data_sources/contract.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiConsumer apiConsumer;
  HomeRemoteDataSourceImpl(this.apiConsumer);

  List<BookEntity> getBooksList(Map<String, dynamic> response) {
    List<BookEntity> books = [];
    for (var book in response['items']) {
      books.add(BookModel.fromJson(book));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var response = await apiConsumer.get(endpoint: 'volumes', queryParameters: {
      'Filtering': 'free-ebooks',
      'q': 'Programming',
    });
    List<BookEntity> books = getBooksList(response);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var response = await apiConsumer.get(endpoint: 'volumes', queryParameters: {
      'Filtering': 'free-ebooks',
      'q': 'Programming',
      'Sorting': 'newest',
    });
    List<BookEntity> books = getBooksList(response);
    return books;
  }
}
