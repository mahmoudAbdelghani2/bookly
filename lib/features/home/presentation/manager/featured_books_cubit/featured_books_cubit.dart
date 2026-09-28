import 'package:bookly/features/home/domain/use_cases/featch_featured_books_usecase.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.featuredBooksUseCase})
      : super(FeaturedBooksInitial());
  final FeatchFeaturedBooksUsecase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    pageNumber == 0
        ? emit(FeaturedBooksLoading())
        : emit(FeaturedBooksPaginationLoading());
    final result = await featuredBooksUseCase.call(pageNumber);
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(failure.message));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
