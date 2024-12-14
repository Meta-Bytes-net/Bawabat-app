import 'dart:developer';

import 'package:bloc/bloc.dart';
class AliveBlocObserver extends BlocObserver {
  final Set<BlocBase> _aliveBlocs = {};

  @override
  void onCreate(BlocBase bloc) {
    _aliveBlocs.add(bloc);
    log('${bloc.arrangedString} was created');
    log('Current Alive Cubits : ${_aliveBlocs.arrangedString}');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    _aliveBlocs.remove(bloc);
    log('${bloc.arrangedString} was closed');
    log('Current Alive Cubits : ${_aliveBlocs.arrangedString}');
    super.onClose(bloc);
  }

}

extension BlocBaseExtension on BlocBase {
  String get arrangedString => '$runtimeType($hashCode)';
}

extension BlocBaseIterableExtension on Iterable<BlocBase> {
  String get arrangedString => '${map((bloc) => bloc.arrangedString)}';
}