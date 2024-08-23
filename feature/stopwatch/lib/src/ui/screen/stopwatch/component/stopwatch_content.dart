import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:feature_stopwatch/src/ui/screen/stopwatch/component/lap_list_view.dart';
import 'package:feature_stopwatch/src/ui/screen/stopwatch/component/stopwatch_control.dart';
import 'package:feature_stopwatch/src/ui/screen/stopwatch/component/stopwatch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final class StopwatchContent extends HookWidget {
  const StopwatchContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isRunning = useState(false);
    final stopwatch = useMemoized(Stopwatch.new);
    final elapsed = useState(Duration.zero);
    final laps = useState<List<Duration>>([]);

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
      laps.value = [];
    }

    void lap() {
      laps.value = [...laps.value, stopwatch.elapsed];
      elapsed.value = Duration.zero;
    }

    useEffect(
      () {
        final ticker = Ticker((_) {
          if (isRunning.value) {
            elapsed.value = stopwatch.elapsed;
          }
        });
        ticker.start();
        return ticker.dispose;
      },
      [isRunning.value],
    );

    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(TorchroSpace.l),
              child: StopwatchTimer(
                isRunning: isRunning.value,
                onStartPressed: start,
                onStopPressed: stop,
                elapsedMilliseconds: stopwatch.elapsedMilliseconds,
                elapsed: stopwatch.elapsed,
              ),
            ),
            const Gap(TorchroSpace.m),
            Flexible(
              child: LapListView(laps: laps.value),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: TorchroSpace.x2l,
              horizontal: TorchroSpace.l,
            ),
            child: StopwatchControl(
              isRunning: isRunning.value,
              onResetPressed: reset,
              onStartPressed: start,
              onStopPressed: stop,
              onLapPressed: lap,
            ),
          ),
        ),
      ],
    );
  }
}
