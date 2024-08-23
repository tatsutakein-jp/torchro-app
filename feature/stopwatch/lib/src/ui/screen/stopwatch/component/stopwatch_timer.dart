import 'package:feature_stopwatch/src/extension/duration.dart';
import 'package:feature_stopwatch/src/extension/int.dart';
import 'package:flutter/material.dart';

final class StopwatchTimer extends StatelessWidget {
  const StopwatchTimer({
    required bool isRunning,
    required void Function() onStartPressed,
    required void Function() onStopPressed,
    required int elapsedMilliseconds,
    required Duration elapsed,
    super.key,
  })  : _isRunning = isRunning,
        _onStartPressed = onStartPressed,
        _onStopPressed = onStopPressed,
        _elapsedMilliseconds = elapsedMilliseconds,
        _elapsed = elapsed;

  final bool _isRunning;
  final VoidCallback _onStartPressed;
  final VoidCallback _onStopPressed;
  final int _elapsedMilliseconds;
  final Duration _elapsed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: _isRunning ? _onStopPressed : _onStartPressed,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox.square(
            dimension: 300,
            child: CircularProgressIndicator(
              value: _elapsedMilliseconds / 60000,
              strokeWidth: 10,
              backgroundColor: Colors.grey[800],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${_elapsed.minutes.zeroPad}'
                ':'
                '${_elapsed.seconds.zeroPad}',
                style: const TextStyle(fontSize: 64, height: 1),
              ),
              Text(
                _elapsed.milliseconds.zeroPad,
                style: const TextStyle(fontSize: 40, height: 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
