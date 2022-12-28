import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../global_widgets/global_loading.dart';
import 'controller/home_ctr.dart';
import 'widgets/button_make_request.dart';
import 'widgets/choose_tipo_pop_up.dart';
import 'widgets/pop_up_home/pop_up_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeCtr homeCtr = HomeCtr();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Observer(builder: (_) {
            if (homeCtr.isLoading) {
              return const Center(child: GlobalLoading());
            }

            return ButtonMakeRequest(homeCtr: homeCtr);
          }),
          Observer(builder: (context) {
            if (!homeCtr.isShowPopUp) return Container();
            return PopUpHome(doWhenItsClose: homeCtr.closePopUp, child: ChooseTipoPopUp(homeCtr: homeCtr));
          })
        ],
      ),
    );
  }
}
