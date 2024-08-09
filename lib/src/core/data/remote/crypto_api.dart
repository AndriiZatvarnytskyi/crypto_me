import 'dart:convert';

import 'package:crypto_me/src/core/domain/models/chart_model.dart';
import 'package:http/http.dart' as http;

import '../../domain/models/coin_model.dart';

class CryptoApi {
  Future<List<Coin>> getCoinList(page) async {
    String url =
        '${ApiConstants.baseUrl}markets?vs_currency=usd&per_page=15&page=$page&sparkline=true';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Coin.fromJson(json)).toList();
    } else {
      throw response.statusCode;
    }
  }

  Future<Coin> getCoinById(String id) async {
    String url = '${ApiConstants.baseUrl}$id';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonList = json.decode(response.body);
      return Coin.fromJson(jsonList);
    } else {
      throw response.statusCode;
    }
  }

  Future<List<double>> getChart(String id) async {
    String url = '${ApiConstants.baseUrl}$id/ohlc?vs_currency=usd&days=30';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      Iterable jsonList = json.decode(response.body);
      List<ChartModel> charts =
          jsonList.map((e) => ChartModel.fromJson(e)).toList();
      List<double> hightList =
          charts.map((list) => list.high!.toDouble()).toList();
      return hightList;
    } else {
      throw response.statusCode;
    }
  }
}

class ApiConstants {
  static String baseUrl = 'https://api.coingecko.com/api/v3/coins/';
}
