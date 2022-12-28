import 'package:flutter/material.dart';

class PopUpErro extends StatelessWidget {
  const PopUpErro({super.key, required this.desc, required this.title});
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: size.height * .02, fontWeight: FontWeight.bold, color: Colors.black)),
        SizedBox(height: size.height * .02),
        Image.asset("assets/icons/error.png", height: size.height * .07),
        SizedBox(height: size.height * .02),
        Text(desc,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: size.height * .02, color: Colors.black38)),
        SizedBox(height: size.height * .01),
      ],
    );
  }
}
