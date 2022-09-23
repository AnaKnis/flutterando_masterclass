import 'package:app_flutterando_masterclass/ui/home_page/components/app_bar_view.dart';
import 'package:app_flutterando_masterclass/ui/home_page/components/card_view.dart';
import 'package:app_flutterando_masterclass/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarView(),
      ),
      body: Column(
        children: [
          CardView(
            icon: SvgPicture.asset("lib/assets/icons/running.svg"),
            title: 'Animações',
            text:
                'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
            numberExercises: '4',
            onPressed: () {},
            linkGithub: () {},
          ),
          const SizedBox(height: 20),
          CardView(
            icon: SvgPicture.asset("lib/assets/icons/glasses.svg"),
            title: 'Leitura de Mockup',
            text:
                'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
            numberExercises: '2',
            onPressed: () {},
            linkGithub: () {},
          ),
          const SizedBox(height: 20),
          CardView(
            icon: SvgPicture.asset("lib/assets/icons/material-toys.svg"),
            title: 'Playground',
            text: 'Ambiente destinado a testes e estudos em geral',
            numberExercises: '3',
            onPressed: () {},
            linkGithub: () {},
          ),
        ],
      ),
    );
  }
}
