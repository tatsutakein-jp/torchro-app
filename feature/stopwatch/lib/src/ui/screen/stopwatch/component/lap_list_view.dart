import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:flutter/material.dart';

final class LapListView extends StatelessWidget {
  const LapListView({
    required List<Duration> laps,
    super.key,
  }) : _laps = laps;

  final List<Duration> _laps;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Stack(
      alignment: Alignment.center,
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(
            left: TorchroSpace.l,
            top: TorchroSpace.l,
            right: TorchroSpace.l,
            bottom: TorchroSpace.x2l + 100,
          ),
          itemCount: _laps.length,
          itemBuilder: (context, index) {
            final lapTime = _laps[index];
            final totalTime =
                _laps.sublist(0, index + 1).reduce((a, b) => a + b);
            return ListTile(
              title: Text('# ${_laps.length - index}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${lapTime.inMinutes.toString().padLeft(2, '0')}:${(lapTime.inSeconds % 60).toString().padLeft(2, '0')}.${(lapTime.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0')}',
                  ),
                  const Gap(TorchroSpace.m),
                  Text(
                    '${totalTime.inMinutes.toString().padLeft(2, '0')}:${(totalTime.inSeconds % 60).toString().padLeft(2, '0')}.${(totalTime.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0')}',
                  ),
                ],
              ),
            );
          },
        ),
        IgnorePointer(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    colorScheme.surface.withOpacity(0.1),
                    colorScheme.surface,
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
