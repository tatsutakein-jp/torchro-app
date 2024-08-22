import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final class StopwatchSection extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isRunning = useState(false);
    final elapsed = useState(Duration.zero);
    final controller = useAnimationController(
      vsync: useSingleTickerProvider(),
      duration: const Duration(hours: 1),
    );

    void start() {
      if (!isRunning.value) {
        isRunning.value = true;
        controller.forward();
      }
    }

    void stop() {
      if (isRunning.value) {
        isRunning.value = false;
        controller.stop();
      }
    }

    void reset() {
      isRunning.value = false;
      elapsed.value = Duration.zero;
      controller.reset();
    }

    useEffect(
      () {
        final ticker = Ticker((time) {
          if (isRunning.value) {
            elapsed.value += const Duration(seconds: 1);
          }
        });
        ticker.start();

        return ticker.dispose;
      },
      [isRunning.value],
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: CircularProgressIndicator(
                value: controller.value,
                strokeWidth: 8,
                color: Colors.blue,
              ),
            ),
            Column(
              children: [
                Text(
                  '${elapsed.value.inHours.toString().padLeft(2, '0')}:'
                          '${elapsed.value.inMinutes.remainder(60).abs()}'
                      .padLeft(2, '0'),
                  style: const TextStyle(fontSize: 48),
                ),
                Text(
                  elapsed.value.inSeconds
                      .remainder(60)
                      .abs()
                      .toString()
                      .padLeft(2, '0'),
                  style: const TextStyle(fontSize: 32),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: isRunning.value ? stop : start,
              child: Text(isRunning.value ? 'Stop' : 'Start'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: reset,
              child: const Text('Reset'),
            ),
          ],
        ),
      ],
    );
  }
}
