import 'package:crypto_me/src/core/ui/widgets/spark_line.dart';
import 'package:crypto_me/src/feature/coin/presentation/selected_crypto_cubit/selected_coin_cubit.dart';
import 'package:crypto_me/src/feature/coin/ui/widgets/days_selector.dart';
import 'package:crypto_me/src/feature/coin/ui/widgets/info_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../error/ui/error_screen.dart';

class CoinScreen extends StatefulWidget {
  const CoinScreen({super.key, required this.coinId});

  final String coinId;

  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 2).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectedCoinCubit()..init(id: widget.coinId),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.blue.withOpacity(0.3),
                ],
              ),
            ),
            child: BlocConsumer<SelectedCoinCubit, SelectedCoinState>(
              listenWhen: (previous, current) {
                if (previous is SelectedCoinStateContent &&
                    current is SelectedCoinStateContent &&
                    previous.selectDays != current.selectDays) {
                  _controller.reset();
                  _controller.forward();
                }
                return true;
              },
              listener: (context, state) {
                if (state is SelectedCoinStateError) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ErrorScreen(
                        error: state.error,
                      ),
                    ),
                  ).whenComplete(() => context
                      .read<SelectedCoinCubit>()
                      .init(id: widget.coinId));
                }
                if (state is SelectedCoinStateContent) {
                  _controller.forward();
                }
              },
              builder: (context, state) {
                if (state is SelectedCoinStateContent) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.network(
                            state.coin.image,
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.sizeOf(context).width * 0.4),
                                child: Text(
                                  state.coin.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                state.coin.symbol,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: Colors.black45),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            state.coin.priceChange24Text,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    color:
                                        state.coin.priceChangePercentage24 >= 0
                                            ? Colors.blue
                                            : const Color(0xFFE42222)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        '${state.coin.currentPrice.toStringAsFixed(2)}\$',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontWeight: FontWeight.w500, fontSize: 45),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0)
                            .copyWith(bottom: 32.0),
                        child: DaysSelector(
                          selectedDays: state.selectDays,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: CustomSparkLine(
                          sparkData: state.currenChart,
                          isBlue: state.coin.priceChangePercentage24 >= 0,
                          height: 150,
                          needLine: true,
                          lineWidth: _animation.value,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Row(
                        children: [
                          InfoContainer(
                            title: 'Lowest in 24',
                            data: '${state.coin.low24}\$',
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          InfoContainer(
                              title: 'Highest in 24',
                              data: '${state.coin.hight24}\$'),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const SizedBox(
                          height: 55,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              'BACK',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
