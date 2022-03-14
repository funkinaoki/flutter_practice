import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: practice()));
}

class practice extends StatefulWidget {
  practice({
    Key? key,
  }) : super(key: key);

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Spacer(),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 200,
              //ここのheightを変える
              height: 100,
              child: Image.asset(
                'images/icon.png',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Spacer(),
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 200,
              height: 200,
              child: Image.asset(
                'images/iconBorder.png',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
