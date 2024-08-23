import 'package:feature_stopwatch/src/extension/duration.dart';
import 'package:feature_stopwatch/src/extension/int.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final class StopwatchSection extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isRunning = useState(false);
    final stopwatch = useMemoized(Stopwatch.new);
    final elapsed = useState(Duration.zero);

    void start() {
      if (!isRunning.value) {
        isRunning.value = true;
        stopwatch.start();
      }
    }

    void stop() {
      if (isRunning.value) {
        isRunning.value = false;
        stopwatch.stop();
      }
    }

    void reset() {
      isRunning.value = false;
      stopwatch.reset();
      elapsed.value = Duration.zero;
    }

    useEffect(
      () {
        final ticker = Ticker((_) {
          // Trigger a rebuild every frame to update the UI
          if (isRunning.value) {
            elapsed.value = stopwatch.elapsed;
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
                value: stopwatch.elapsedMilliseconds / 60000,
                strokeWidth: 8,
              ),
            ),
            Column(
              children: [
                Text(
                  '${stopwatch.elapsed.minutes.zeroPad}'
                  ':'
                  '${stopwatch.elapsed.seconds.zeroPad}',
                  style: const TextStyle(fontSize: 48),
                ),
                Text(
                  stopwatch.elapsed.milliseconds.zeroPad,
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
