import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Image.asset("lib/assets/logo/logo2x.png"),
      ),
      leadingWidth: 73,
      titleSpacing: 5,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Atividades", style: Theme.of(context).textTheme.headline1),
          Text("Flutterando Masterclass",
              style: Theme.of(context).textTheme.subtitle1),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: SvgPicture.asset(
            "lib/assets/icons/moon.svg",
            width: 25,
          ),
        ),
      ],
    );
  }
}
