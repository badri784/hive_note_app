import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpilBlocObservr implements BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    debugPrint('on change ${bloc.runtimeType}, ${change.toString()}');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    debugPrint('on close ${bloc.toString()}');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {}

  @override
  void onDone(
    Bloc<dynamic, dynamic> bloc,
    Object? event, [
    Object? error,
    StackTrace? stackTrace,
  ]) {}

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {}

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {}
}
