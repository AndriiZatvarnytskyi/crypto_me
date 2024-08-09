import 'dart:async';

import 'package:crypto_me/src/core/data/remote/crypto_api.dart';
import 'package:crypto_me/src/core/domain/models/coin_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_cubit.freezed.dart';
part 'crypto_state.dart';

class CryptoCubit extends Cubit<CryptoState> {
  final CryptoApi _api = CryptoApi();

  CryptoCubit() : super(const CryptoState.loading());

  Future<void> init() async {
    await _loadData();
  }

  Future<void> _loadData() async {
    try {
      emit(const CryptoState.loading());
      List<Coin> coins = await _api.getCoinList(1);
      emit(CryptoState.content(coins: coins));
    } catch (e) {
      _onError(e);
    }
  }

  void nextPage() async {
    final currentState = state as CryptoStateContent;

    try {
      emit(currentState.copyWith(nextPageLoading: true));

      List<Coin> coins = await _api.getCoinList(currentState.page + 1);

      List<Coin> newCoins = [];

      newCoins.addAll(currentState.coins + coins);

      emit(
        currentState.copyWith(
          coins: newCoins,
          page: currentState.page + 1,
          nextPageLoading: false,
        ),
      );
    } catch (e) {
      _onError(e);
    }
  }

  void _onError(e) {
    if (e == 429) {
      emit(const CryptoState.error(error: ErrorStatus.tooManyRequests));
    } else {
      emit(const CryptoState.error(error: ErrorStatus.wrongRequest));
    }
  }
}
