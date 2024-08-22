import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final class CountDown extends HookWidget {
  const CountDown({
    required this.initialDuration,
    super.key,
    this.onFinish,
    this.strokeWidth = 5.0,
    this.color = Colors.blue,
    this.textStyle,
  });

  final Duration initialDuration;
  final VoidCallback? onFinish;
  final double strokeWidth;
  final Color color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: initialDuration);
    final animation = useAnimation(
      Tween<double>(begin: 1, end: 0).animate(controller),
    );
    final timeLeft = useState(initialDuration);
    final isRunning = useState(false);
    final isCompleted = useState(false);

    void startTimer() {
      if (!isRunning.value) {
        controller.forward();
        isRunning.value = true;
        isCompleted.value = false;
      }
    }

    void pauseTimer() {
      if (isRunning.value) {
        controller.stop();
        isRunning.value = false;
      }
    }

    void resumeTimer() {
      if (!isRunning.value && !isCompleted.value) {
        controller.forward();
        isRunning.value = true;
      }
    }

    void restartTimer() {
      controller.reset();
      timeLeft.value = initialDuration;
      startTimer();
    }

    useEffect(
      () {
        Timer.periodic(const Duration(seconds: 1), (timer) {
          if (controller.isCompleted) {
            timer.cancel();
            isRunning.value = false;
            isCompleted.value = true;
            onFinish?.call();
          } else if (isRunning.value) {
            timeLeft.value -= const Duration(seconds: 1);
          }
        });

        return controller.dispose;
      },
      [],
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                value: animation,
                strokeWidth: strokeWidth,
                color: color,
              ),
            ),
            Text(
              "${timeLeft.value.inMinutes}:${(timeLeft.value.inSeconds % 60).toString().padLeft(2, '0')}",
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: isRunning.value ? pauseTimer : resumeTimer,
              child: Text(isRunning.value ? 'Pause' : 'Resume'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: startTimer,
              child: const Text('Start'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: restartTimer,
              child: const Text('Restart'),
            ),
          ],
        ),
      ],
    );
  }
}
