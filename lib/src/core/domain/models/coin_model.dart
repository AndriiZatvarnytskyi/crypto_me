class Coin {
  final String id;
  final String symbol;
  final String name;
  final String image;
  final double currentPrice;
  final double hight24;
  final double low24;
  final String priceChange24Text;
  final double priceChangePercentage24;
  final int marketCapRank;
  SparklineIn7D? sparklineIn7D;

  Coin({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.hight24,
    required this.low24,
    required this.priceChange24Text,
    required this.priceChangePercentage24,
    required this.currentPrice,
    required this.marketCapRank,
    required this.sparklineIn7D,
  });

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      id: json['id'],
      symbol: json['symbol'].toString().toUpperCase(),
      name: json['name'],
      image: json['image'] is Map ? json['image']['large'] : json['image'],
      currentPrice: json['current_price'] != null
          ? json['current_price'].toDouble()
          : json['market_data']['current_price']['usd'].toDouble(),
      marketCapRank: json['market_cap_rank'],
      hight24: json['high_24h'] != null
          ? json['high_24h'].toDouble()
          : json['market_data']['high_24h']['usd'].toDouble(),
      low24: json['low_24h'] != null
          ? json['low_24h'].toDouble()
          : json['market_data']['low_24h']['usd'].toDouble(),
      priceChange24Text: json['price_change_percentage_24h'] != null
          ? setPriceChangePercentage24ToText(
              json['price_change_percentage_24h'])
          : setPriceChangePercentage24ToText(
              json['market_data']['price_change_percentage_24h']),
      priceChangePercentage24: json['price_change_percentage_24h'] ??
          json['market_data']['price_change_percentage_24h'],
      sparklineIn7D: json["sparkline_in_7d"] != null
          ? SparklineIn7D.fromJson(json["sparkline_in_7d"])
          : null,
    );
  }

  static String setPriceChangePercentage24ToText(price) {
    return price.toString()[0] != '-'
        ? '+${price.toStringAsFixed(2)}%'
        : '${price.toStringAsFixed(2)}%';
  }
}

class SparklineIn7D {
  SparklineIn7D({
    required this.price,
  });

  List<double> price;

  factory SparklineIn7D.fromJson(Map<String, dynamic> json) => SparklineIn7D(
        price: List<double>.from(json["price"].map((x) => x?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "price": List<dynamic>.from(price.map((x) => x)),
      };
}
