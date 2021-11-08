import 'dart:developer';

import 'package:bloc/bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('onCreate(${bloc.runtimeType})');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('onTransition(${bloc.runtimeType},\n event: ${transition.event}\n currentState:${transition.currentState})');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    log('onClose(${bloc.runtimeType})');
    super.onClose(bloc);
  }
}
