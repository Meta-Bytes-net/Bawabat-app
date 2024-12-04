import 'package:bloc/bloc.dart';
import 'package:bwabat/features/main_layout/data/models/ticket/ticket.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());
  String qrData = "Hello World!";
  void emitScanStates() async {
    emit(const HomeState.scanLoadingState());

  }

  
}
