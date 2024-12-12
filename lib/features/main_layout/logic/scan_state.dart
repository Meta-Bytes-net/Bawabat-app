part of 'scan_cubit.dart';

@freezed
sealed class ScanState with _$ScanState {
  const factory ScanState.initial() = _Initial;
  // const factory ScanState.scanOfflineSuccessState(Ticket ticket) =
  //     ScanOfflineSuccessState;
  // const factory ScanState.scanOnlineSuccessState(Ticket ticket) =
  //     ScanOnlineSuccessState;
  // const factory ScanState.scanOfflineErrorState(Ticket ticket) =
  //     ScanOfflineErrorState;
  const factory ScanState.scanScanningState() = ScanScanningState;
  const factory ScanState.scanOnlineLoadingState() = ScanOnlineLoadingState;
  const factory ScanState.scanErrorState(ApiErrorModel error) = ScanErrorState;
  const factory ScanState.scanProcessingState({String? barcodeData}) =
      ScanProcessingState;
  const factory ScanState.scanNavigationState({Ticket? ticket}) =
      ScanNavigationState;

  // const factory ScanState.barcodeNavigation({Ticket? ticket, bool? isSuccess}) =
  //     BarcodeNavigation;
  // const factory ScanState.scanErrorState(ApiErrorModel error) = BarcodeError;

// class BarcodeScanning extends BarcodeState {}

// class BarcodeNavigation extends BarcodeState {
//   final Ticket ticket;
//   final bool isSuccess;

//   BarcodeNavigation(this.ticket, this.isSuccess);
// }

// class BarcodeError extends BarcodeState {
//   final String message;

//   BarcodeError(this.message);
// }
}
