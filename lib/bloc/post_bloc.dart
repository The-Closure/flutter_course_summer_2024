import 'package:bloc_session_two/service/post_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../model/handling_models.dart';
import '../model/post_model.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<GetAllPosts>((event, emit) async {
      emit(PostLoading());
      var result = await getAllPosts();
      if (result is ListOf<PostModel>) {
        emit(
          PostSuccess(
            posts: result.data,
          ),
        );
      } else if (result is FailureModel) {
        emit(
          PostError(
            errorMessage: result.message,
          ),
        );
      }
    });
  }
}
