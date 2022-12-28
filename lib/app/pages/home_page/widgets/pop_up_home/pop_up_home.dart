import 'package:flutter/material.dart';

import 'background_pop_up.dart';

class PopUpHome extends StatefulWidget {
  const PopUpHome({super.key, required this.doWhenItsClose, required this.child});

  final Function() doWhenItsClose;
  final Widget child;
  @override
  State<PopUpHome> createState() => _PopUpHomeState();
}

class _PopUpHomeState extends State<PopUpHome> with TickerProviderStateMixin {
  late final ctrAnimation = AnimationController(
      vsync: this, duration: const Duration(seconds: 1), reverseDuration: const Duration(milliseconds: 800));

  Function() get doWhenItsClose => widget.doWhenItsClose;
  Widget get child => widget.child;

  @override
  void initState() {
    super.initState();
    ctrAnimation.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) doWhenItsClose();
    });
    ctrAnimation.forward();
  }

  @override
  void dispose() {
    super.dispose();
    ctrAnimation.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: ctrAnimation,
        builder: (_, __) {
          return BackGroundPopUp(ctrAnimation: ctrAnimation, child: child);
        });
  }
}
