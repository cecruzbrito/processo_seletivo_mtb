import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonFecharPopUp extends StatelessWidget {
  const ButtonFecharPopUp({super.key, required this.onPressed});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var style = ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 2, 47, 150),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size.width * .02)),
        padding: EdgeInsets.symmetric(horizontal: size.width * .07, vertical: size.height * .015));
    return ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Text("Fechar", style: TextStyle(color: Colors.white, fontSize: size.height * .02)));
  }
}
