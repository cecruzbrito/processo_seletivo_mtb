import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:processo_seletivo_mtb/app/pages/home_page/controller/home_ctr.dart';

class ButtonMakeRequest extends StatelessWidget {
  const ButtonMakeRequest({super.key, required this.homeCtr});

  final HomeCtr homeCtr;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var style = ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 2, 47, 150),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size.width * .02)),
        padding: EdgeInsets.symmetric(horizontal: size.width * .07, vertical: size.height * .015));

    return Center(
      child: ElevatedButton(
          style: style,
          onPressed: homeCtr.onTapInButton,
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              reverseDuration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text("Fazer a requisição",
                  style: TextStyle(color: Colors.white, fontSize: size.height * .02)))),
    );
  }
}
