import 'package:bookly/features/home/domain/use_cases/featch_newest_books_usecase.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatchNewestBooksCubit extends Cubit<NewestBooksState> {
  final FeatchNewestBooksUsecase getNewestBooksUseCase;

  FeatchNewestBooksCubit({required this.getNewestBooksUseCase})
      : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    final result = await getNewestBooksUseCase.call();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure.message)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
