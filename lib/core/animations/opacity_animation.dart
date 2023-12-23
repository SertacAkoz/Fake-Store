import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  final Widget child;
  final Duration delay;
  const OpacityAnimation({
    Key? key,
    required this.child,
    required this.delay,
  }) : super(key: key);

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
  double opacity = 0.0;

  Future<void> startAnimation() async {
    await Future<dynamic>.delayed(widget.delay);
    if (mounted) {
      setState(() {
        opacity = 1.0;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: opacity,
      child: widget.child,
    );
  }
}