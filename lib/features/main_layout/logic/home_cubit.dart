import 'package:bloc/bloc.dart';
import 'package:bwabat/core/helpers/encryption_manager.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());
  String qrData = "Hello World!";
decryprtData(){
    EncryptionManager.decryptData();
}

}
