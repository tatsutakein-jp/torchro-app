import 'package:flutter/material.dart';

/// ホーム画面のナビゲーターのキー
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

/// タイマー画面のナビゲーターのキー
final timerNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'timer');

/// ストップウォッチ画面のナビゲーターのキー
final stopwatchNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'stopwatch');

/// 設定画面のナビゲーターのキー
final settingsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'settings');
