import 'package:feature_timer/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final class TimerSection extends HookWidget {
  const TimerSection({
    required void Function() onMoreButtonPressed,
    super.key,
  }) : _onMoreButtonPressed = onMoreButtonPressed;

  //
  // ignore: unused_field
  final VoidCallback _onMoreButtonPressed;

  @override
  Widget build(BuildContext context) {
    //
    // ignore: unused_local_variable
    final l10n = L10n.of(context);
    // 初期のタイマー時間（2分）
    const initialDuration = Duration(minutes: 2);
    final timerController = useAnimationController(duration: initialDuration);
    final remainingTime = useState(initialDuration);
    final isAnimating = useState(false);

    timerController.addListener(() {
      isAnimating.value = timerController.isAnimating;
    });

    useEffect(
      () {
        timerController.forward();
        return timerController.dispose;
      },
      [],
    );

    // タイマーのアニメーションの進行度を取得
    final animation = useAnimation(
      Tween<double>(begin: 1, end: 0).animate(timerController),
    );

    // 残り時間の表示
    final timeLeft = remainingTime.value * animation;

    void addOneMinute() {
      final currentRemainingTime = remainingTime.value * animation;
      final newRemainingTime =
          currentRemainingTime + const Duration(minutes: 1);

      remainingTime.value = newRemainingTime;
      timerController.stop();
      timerController.duration = newRemainingTime;
      timerController.forward(from: 1); // 現在の進行状況を維持するため、from: 1.0 で再開
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'タイマー (${initialDuration.inMinutes}分)',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: CircularProgressIndicator(
                  value: animation,
                  strokeWidth: 8,
                  backgroundColor: Colors.grey.shade800,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.purple.shade300),
                ),
              ),
              Positioned(
                child: Text(
                  '${timeLeft.inSeconds ~/ 60}:${(timeLeft.inSeconds % 60).toString().padLeft(2, '0')}',
                  style: const TextStyle(fontSize: 48),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (isAnimating.value) {
                    timerController.stop();
                  } else {
                    timerController.forward();
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(24),
                  backgroundColor: Colors.pink.shade200,
                ),
                child: Icon(
                  isAnimating.value ? Icons.pause : Icons.play_arrow,
                  size: 36,
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: addOneMinute,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(24),
                  backgroundColor: Colors.purple.shade300,
                ),
                child: const Text(
                  '+1:00',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
