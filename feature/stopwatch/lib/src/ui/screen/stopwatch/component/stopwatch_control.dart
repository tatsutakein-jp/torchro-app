import 'package:core_designsystem/space.dart';
import 'package:flutter/material.dart';

final class StopwatchControl extends StatelessWidget {
  const StopwatchControl({
    required bool isRunning,
    required void Function() onResetPressed,
    required void Function() onStartPressed,
    required void Function() onStopPressed,
    required void Function() onLapPressed,
    super.key,
  })  : _isRunning = isRunning,
        _onResetPressed = onResetPressed,
        _onStartPressed = onStartPressed,
        _onStopPressed = onStopPressed,
        _onLapPressed = onLapPressed;

  final bool _isRunning;
  final VoidCallback _onResetPressed;
  final VoidCallback _onStartPressed;
  final VoidCallback _onStopPressed;
  final VoidCallback _onLapPressed;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: FilledButton.tonal(
              onPressed: _onResetPressed,
              child: const Icon(Icons.restart_alt_outlined),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
            ),
          ),
          Expanded(
            child: FilledButton(
              onPressed: _isRunning ? _onStopPressed : _onStartPressed,
              child: Icon(_isRunning ? Icons.pause : Icons.play_arrow),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: TorchroSpace.m,
                  horizontal: TorchroSpace.x2l,
                ),
              ),
            ),
          ),
          Expanded(
            child: _isRunning
                ? FilledButton.tonal(
                    onPressed: _onLapPressed,
                    child: const Icon(Icons.flag_outlined),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      );
}
