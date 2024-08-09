import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

class AppRefreshIndicator extends StatelessWidget {
  const AppRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  final Widget child;
  final void Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: () async => onRefresh(),
      offsetToArmed: 32,
      builder: (
        BuildContext context,
        Widget child,
        IndicatorController controller,
      ) {
        return AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            return Stack(
              children: [
                Transform.translate(
                  offset: Offset(0, controller.value * 48),
                  child: child,
                ),
                Transform.translate(
                  offset: Offset(0, (controller.value - 1.2) * 32),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: controller.value * 16,
                    ),
                    child: const Align(
                      alignment: Alignment.topCenter,
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: child,
    );
  }
}
