part of 'crypto_cubit.dart';

@freezed
class CryptoState with _$CryptoState {
  const factory CryptoState.loading() = CryptoStateStateInitial;
  const factory CryptoState.content({
    @Default([]) List<Coin> coins,
    @Default(1) int page,
    @Default(false) bool nextPageLoading,
  }) = CryptoStateContent;
  const factory CryptoState.error({
    @Default(ErrorStatus.wrongRequest) ErrorStatus error,
  }) = CryptoStateStateError;
}

enum ErrorStatus { tooManyRequests, wrongRequest }
