import 'dart:async';

import 'package:crypto_me/src/core/data/remote/crypto_api.dart';
import 'package:crypto_me/src/core/domain/models/coin_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/presentation/crypto_cubit/crypto_cubit.dart';

part 'selected_coin_cubit.freezed.dart';
part 'selected_coin_state.dart';

class SelectedCoinCubit extends Cubit<SelectedCoinState> {
  final CryptoApi _api = CryptoApi();

  SelectedCoinCubit() : super(const SelectedCoinState.loading());

  Future<void> init({required id}) async {
    await _loadData(id);
  }

  Future<void> _loadData(id) async {
    try {
      emit(const SelectedCoinState.loading());
      Coin coin = await _api.getCoinById(id);
      List<double> charts = await _api.getChart(id);
      emit(SelectedCoinState.content(
        coin: coin,
        charts: charts,
        currenChart: charts,
      ));
    } catch (e) {
      _onError(e);
    }
  }

  void selectChart(int days) {
    final currentState = state as SelectedCoinStateContent;
    int rangeEnd = (currentState.charts.length / 30 * days).toInt();

    List<double> newChart =
        currentState.charts.sublist(currentState.charts.length - rangeEnd);

    emit(currentState.copyWith(selectDays: days, currenChart: newChart));
  }

  void _onError(e) {
    if (e == 429) {
      emit(const SelectedCoinState.error(error: ErrorStatus.tooManyRequests));
    } else {
      emit(const SelectedCoinState.error(error: ErrorStatus.wrongRequest));
    }
  }
}
