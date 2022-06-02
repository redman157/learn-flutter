import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class CommentEvent extends Equatable{
  const CommentEvent();
}

class LoadCommentEvent extends CommentEvent{
  @override
  List<Object?> get props => [];
}
