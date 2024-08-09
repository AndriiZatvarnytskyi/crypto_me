import 'package:crypto_me/src/core/domain/models/coin_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/ui/widgets/spark_line.dart';

class CoinContainer extends StatelessWidget {
  const CoinContainer({
    super.key,
    required this.coin,
  });

  final Coin coin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            offset: const Offset(0, 2),
            spreadRadius: 0,
            blurRadius: 2)
      ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            coin.image,
            height: 50,
            width: 50,
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            width: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  coin.symbol,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 18),
                ),
                Text(
                  coin.priceChange24Text,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomSparkLine(
              sparkData: coin.sparklineIn7D!.price,
              isBlue: coin.priceChangePercentage24 >= 0,
              needLine: false,
              lineWidth: 1.0,
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              '${coin.currentPrice.toStringAsFixed(2)}\$',
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
