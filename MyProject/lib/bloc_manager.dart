import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/base_bloc/comment_state.dart';
typedef RenderUI();

class BaseBloc<B extends StateStreamable<S>, S> extends BlocBuilder<B, S> {

  BlocWidgetBuilder<S> builder = (context, state) {
    if (state is CommentLoadingState) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state is CommentErrorState){
      return Center(
        child: Text(state.error.toString()),
      );
    }
    if (state is CommentLoadedState){

    }
    return Container();
  };

  BaseBloc({required super.builder});
}