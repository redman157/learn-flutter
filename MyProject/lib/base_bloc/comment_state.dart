import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:myproject/models/comment.dart';

@immutable
abstract class CommentState extends Equatable{
  @override
  List<Object?> get props => [];
}

class CommentLoadingState extends CommentState{
  @override
  List<Object?> get props => [];
}

class CommentLoadedState extends CommentState {
  final List<dynamic> comment;

  CommentLoadedState(this.comment);

  @override
  List<Object?> get props => comment;
}

class CommentErrorState extends CommentState {
  final String error;

  CommentErrorState(this.error);

  @override
  List<Object?> get props => [error];
}