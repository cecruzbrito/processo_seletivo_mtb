import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimationPopUpScaleOpacity extends StatelessWidget {
  const AnimationPopUpScaleOpacity({super.key, required this.child, required this.ctrAnimation});
  final AnimationController ctrAnimation;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    var tweenOpacity = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: ctrAnimation, curve: const Interval(.3, .6, curve: Curves.linear)));
    var tweenScale = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: ctrAnimation, curve: const Interval(.55, 1, curve: Curves.fastOutSlowIn)));
    return Opacity(
        opacity: tweenOpacity.value, child: Transform.scale(scale: tweenScale.value, child: child));
  }
}
