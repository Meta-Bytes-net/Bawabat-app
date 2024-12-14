import 'package:bloc/bloc.dart';
import 'package:bwabat/features/main_layout/data/repos/home_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  Future<void> signOut() async {
    emit(const HomeState.signoutLoading());
    bool isSignedOut = await _homeRepo.signOut();
    if (isSignedOut) {
      emit(const HomeState.signoutSuccess());
    } else {
      emit(const HomeState.signoutError());
    }
  }
}
