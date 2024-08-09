import 'package:crypto_me/src/feature/coin/presentation/selected_crypto_cubit/selected_coin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DaysSelector extends StatelessWidget {
  const DaysSelector({super.key, required this.selectedDays});

  final int selectedDays;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            offset: const Offset(0, 2),
            spreadRadius: 0,
            blurRadius: 2)
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: _dayBox(context, '24h', 1),
          ),
          _dayBox(context, '7d', 7),
          Align(
            alignment: Alignment.centerRight,
            child: _dayBox(context, '30d', 30),
          ),
        ],
      ),
    );
  }

  _dayBox(BuildContext context, String title, int days) {
    return GestureDetector(
      onTap: () {
        context.read<SelectedCoinCubit>().selectChart(days);
      },
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: MediaQuery.sizeOf(context).width / 3,
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(
              selectedDays == days ? 0.7 : 0,
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: selectedDays == days
                  ? Colors.white
                  : const Color.fromARGB(255, 10, 67, 114)),
        ),
      ),
    );
  }
}
