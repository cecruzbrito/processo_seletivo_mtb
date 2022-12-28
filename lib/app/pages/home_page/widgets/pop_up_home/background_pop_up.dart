import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:processo_seletivo_mtb/app/pages/home_page/widgets/pop_up_home/animations/animation_pop_up_scale.dart';

import 'button_fechar_pop_up.dart';

class BackGroundPopUp extends StatelessWidget {
  const BackGroundPopUp({super.key, required this.ctrAnimation, required this.child});
  final AnimationController ctrAnimation;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var tweenValueBlue = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: ctrAnimation, curve: const Interval(0, .45, curve: Curves.linear)));

    var tweenColor = ColorTween(begin: Colors.black.withOpacity(0), end: Colors.black.withOpacity(0.2))
        .animate(CurvedAnimation(parent: ctrAnimation, curve: const Interval(0, .2, curve: Curves.linear)));
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: tweenValueBlue.value, sigmaY: tweenValueBlue.value),
          child: Container(height: size.height, width: size.width, color: tweenColor.value),
        ),
        Center(
          child: AnimationPopUpScaleOpacity(
            ctrAnimation: ctrAnimation,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * .03, vertical: size.height * .01),
              margin: EdgeInsets.symmetric(horizontal: size.width * .06),
              decoration:
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(size.width * .02)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  child,
                  SizedBox(height: size.height * .01),
                  ButtonFecharPopUp(onPressed: ctrAnimation.reverse)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
