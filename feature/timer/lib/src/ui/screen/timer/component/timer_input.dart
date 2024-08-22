import 'package:core_common/log.dart';
import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// hour, minute, second
const timeLength = 6;

final class TimerInput extends HookWidget {
  const TimerInput({super.key});

  @override
  Widget build(BuildContext context) {
    final time = useState('000000');

    void addTimeNumber(String addNumber) {
      final currentTimeNumber = int.parse(time.value).toString();
      if (currentTimeNumber.length >= timeLength) {
        logger.info('Time is already 6 digits');
        return;
      }
      time.value = (currentTimeNumber + addNumber).padLeft(timeLength, '0');
    }

    void backspaceTimeNumber() {
      final currentTimeNumber = int.parse(time.value);
      if (currentTimeNumber == 0) {
        logger.info('Time is already 0');
        return;
      }
      time.value =
          time.value.substring(0, timeLength - 1).padLeft(timeLength, '0');
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time.value.substring(0, 2),
                style: const TextStyle(fontSize: 48, color: Colors.white),
              ),
              const Text(
                'h',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              const Gap(TorchroSpace.m),
              Text(
                time.value.substring(2, 4),
                style: const TextStyle(fontSize: 48, color: Colors.white),
              ),
              const Text(
                'm',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              const Gap(TorchroSpace.m),
              Text(
                time.value.substring(4, 6),
                style: const TextStyle(fontSize: 48, color: Colors.white),
              ),
              const Text(
                's',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...[
                NumberButton(
                  number: '1',
                  onPressed: () => addTimeNumber('1'),
                ),
                NumberButton(
                  number: '2',
                  onPressed: () => addTimeNumber('2'),
                ),
                NumberButton(
                  number: '3',
                  onPressed: () => addTimeNumber('3'),
                ),
              ].expand((widget) => [widget, const Gap(TorchroSpace.xs)]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...[
                NumberButton(
                  number: '4',
                  onPressed: () => addTimeNumber('4'),
                ),
                NumberButton(
                  number: '5',
                  onPressed: () => addTimeNumber('5'),
                ),
                NumberButton(
                  number: '6',
                  onPressed: () => addTimeNumber('6'),
                ),
              ].expand((widget) => [widget, const Gap(TorchroSpace.xs)]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...[
                NumberButton(
                  number: '7',
                  onPressed: () => addTimeNumber('7'),
                ),
                NumberButton(
                  number: '8',
                  onPressed: () => addTimeNumber('8'),
                ),
                NumberButton(
                  number: '9',
                  onPressed: () => addTimeNumber('9'),
                ),
              ].expand((widget) => [widget, const Gap(TorchroSpace.xs)]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...[
                NumberButton(
                  number: '00',
                  onPressed: () => addTimeNumber('00'),
                ),
                NumberButton(
                  number: '0',
                  onPressed: () => addTimeNumber('0'),
                ),
                SizedBox.square(
                  dimension: 92,
                  child: IconButton.filledTonal(
                    icon: const Icon(
                      Icons.backspace_outlined,
                    ),
                    onPressed: backspaceTimeNumber,
                  ),
                ),
              ].expand((widget) => [widget, const Gap(TorchroSpace.xs)]),
            ],
          ),
          SizedBox.square(
            dimension: 92,
            child: IconButton.filled(
              icon: const Icon(
                Icons.play_arrow,
              ),
              onPressed: () {
                // タイマーのスタート処理
              },
            ),
          ),
        ].expand((widget) => [widget, const Gap(TorchroSpace.xs)]),
      ],
    );
  }
}

final class NumberButton extends StatelessWidget {
  const NumberButton({
    required this.number,
    required this.onPressed,
    super.key,
  });

  final String number;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 92,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
        child: Text(
          number,
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
