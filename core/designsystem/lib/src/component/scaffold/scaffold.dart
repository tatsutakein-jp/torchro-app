import 'package:core_designsystem/space.dart';
import 'package:flutter/material.dart';

final class TorchroScaffold extends StatelessWidget {
  const TorchroScaffold({
    super.key,
    PreferredSizeWidget? appBar,
    Widget? body,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
  })  : _appBar = appBar,
        _body = body,
        _floatingActionButtonLocation = floatingActionButtonLocation,
        _floatingActionButton = floatingActionButton;

  final PreferredSizeWidget? _appBar;
  final Widget? _body;

  final Widget? _floatingActionButton;
  final FloatingActionButtonLocation? _floatingActionButtonLocation;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar,
        body: Padding(
          padding: const EdgeInsets.all(TorchroSpace.s),
          child: _body,
        ),
        floatingActionButton: _floatingActionButton,
        floatingActionButtonLocation: _floatingActionButtonLocation,
      );
}
