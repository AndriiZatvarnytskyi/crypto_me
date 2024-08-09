import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        height: 85,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              offset: const Offset(0, 2),
              spreadRadius: 0,
              blurRadius: 2)
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 2, 26, 46)),
            ),
            Text(
              data,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
