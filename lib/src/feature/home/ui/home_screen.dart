import 'package:crypto_me/src/core/domain/models/coin_model.dart';
import 'package:crypto_me/src/core/presentation/crypto_cubit/crypto_cubit.dart';
import 'package:crypto_me/src/feature/coin/ui/coin_screen.dart';
import 'package:crypto_me/src/feature/error/ui/error_screen.dart';
import 'package:crypto_me/src/feature/home/ui/widgets/coin_contaider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/ui/widgets/app_refresh_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _animation = Tween<double>(begin: 80, end: 16)
        .chain(CurveTween(curve: Curves.bounceOut))
        .animate(_controller)
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
    return Scaffold(
      body: BlocConsumer<CryptoCubit, CryptoState>(listener: (context, state) {
        if (state is CryptoStateStateError) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ErrorScreen(
                error: state.error,
              ),
            ),
          ).whenComplete(() => context.read<CryptoCubit>().init());
        }
        if (state is CryptoStateContent) {
          _controller.forward();
        }
      }, builder: (context, state) {
        if (state is CryptoStateContent) {
          return AppRefreshIndicator(
            onRefresh: () =>
                context.read<CryptoCubit>().init().whenComplete(() {
              _controller.reset();
              _controller.forward();
            }),
            child: ListView(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  itemCount: state.coins.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    Coin coin = state.coins[index];
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CoinScreen(
                                coinId: coin.id,
                              ),
                            ),
                          );
                        },
                        child: CoinContainer(coin: coin));
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: _animation.value,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0).copyWith(top: 8),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width / 3,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      onPressed: !state.nextPageLoading
                          ? context.read<CryptoCubit>().nextPage
                          : null,
                      child: SizedBox(
                        height: 55,
                        width: MediaQuery.sizeOf(context).width / 3,
                        child: Center(
                          child: !state.nextPageLoading
                              ? const Text(
                                  'SHOW MORE',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                )
                              : const SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 3,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          );
        }
      }),
    );
  }
}
