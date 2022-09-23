import 'package:app_flutterando_masterclass/utils/constants.dart';
import 'package:app_flutterando_masterclass/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
    required this.title,
    required this.text,
    required this.icon,
    required this.onPressed,
    required this.linkGithub,
    required this.numberExercises,
  }) : super(key: key);

  final SvgPicture icon;
  final String title;
  final String text;
  final String numberExercises;
  final Function linkGithub;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Constants.darkGrey,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Constants.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: icon,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(title, style: Theme.of(context).textTheme.headline2),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Exercícios:",
                          style: Theme.of(context).textTheme.bodyText2),
                      const SizedBox(width: 8),
                      Text(numberExercises,
                          style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: linkGithub(),
                    child: Row(
                      children: [
                        SvgPicture.asset("lib/assets/icons/github.svg"),
                        const SizedBox(width: 5),
                        const Text(
                          "Acessar código fonte",
                          style: TextStyle(
                              color: Constants.lightBlue, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: onPressed(),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text("Ver mais",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
