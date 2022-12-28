import 'dart:io';

import 'package:flutter/material.dart';
import 'package:processo_seletivo_mtb/app/pages/home_page/controller/home_ctr.dart';

class PopUpBemSucedido extends StatelessWidget {
  const PopUpBemSucedido({super.key, required this.homeCtr});
  final HomeCtr homeCtr;
  @override
  Widget build(BuildContext context) {
    return Image.file(File(homeCtr.resultadoApi!.pathFileCacheTemporary));
  }
}
