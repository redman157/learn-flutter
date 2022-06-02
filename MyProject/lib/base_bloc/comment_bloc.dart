import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/base_bloc/comment_event.dart';
import 'package:myproject/base_bloc/comment_state.dart';
import 'package:myproject/models/comment.dart';
import 'package:myproject/reponse/user_response.dart';
import 'package:myproject/repository/user_repository.dart';

@immutable
class CommentBloc extends Bloc<CommentEvent, CommentState>{
  final UserRepository _userRepository;
  CommentBloc(this._userRepository) : super(CommentLoadingState()){
    on<LoadCommentEvent>((event, emit) async {
      emit(CommentLoadingState());
      try {
        final comments = await _userRepository.getComments(20, 20);
        if(comments == null){
          emit(CommentErrorState('List la rong'));
        }else {
          emit(CommentLoadedState(comments));
        }
      } catch (e) {
        emit(CommentErrorState(e.toString()));
      }
    });
  }

}