part of 'selected_coin_cubit.dart';

@freezed
class SelectedCoinState with _$SelectedCoinState {
  const factory SelectedCoinState.loading() = SelectedCoinStateInitial;
  const factory SelectedCoinState.content({
    required Coin coin,
    @Default([]) List<double> charts,
    @Default([]) List<double> currenChart,
    @Default(30) int selectDays,
  }) = SelectedCoinStateContent;
  const factory SelectedCoinState.error({
    @Default(ErrorStatus.wrongRequest) ErrorStatus error,
  }) = SelectedCoinStateError;
}
