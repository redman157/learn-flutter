
import 'package:flutter_bloc/flutter_bloc.dart';
// event -> bloc
enum UserEvent {
  loading,
  success,
  error
}

class BaseBloc<E, V> extends Bloc<E, V>{
  BaseBloc(super.initialState);
  @override
  void onChange(Change<V> change) {
    super.onChange(change);
  }

  @override
  void onEvent(E event) {
    super.onEvent(event);
  }

  @override
  void onTransition(Transition<E, V> transition) {
    super.onTransition(transition);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }

}