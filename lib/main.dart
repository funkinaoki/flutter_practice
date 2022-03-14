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

class _practiceState extends State<practice>
    with SingleTickerProviderStateMixin {
  @override
  late AnimationController _animationController;
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              AnimatedBuilder(
                builder: (context, child) {
                  return Container(
                    width: 200,
                    //ここのheightを変える
                    height: _animationController.value * 200,
                    child: Image.asset(
                      'images/icon.png',
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.fitWidth,
                    ),
                  );
                },
                animation: _animationController,
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
      ),
    );
  }
}
