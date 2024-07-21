import 'package:flutter/material.dart';
import 'package:pedalocation/constants.dart';
import 'package:pedalocation/ui/home/home_model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (context) => HomeModel(),
      child: Consumer<HomeModel>(
        builder: (context, model, _) => SafeArea(
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "PedaLoc'",
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  SizedBox(
                    height: size.height * 0.15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _getHomeButton(
                        context,
                        screenSize: size,
                        onPressed: model.onReservationClicked,
                        icon: Icons.directions_boat,
                        buttonText: "Nouvelle \nréservation",
                      ),
                      _getHomeButton(
                        context,
                        screenSize: size,
                        onPressed: model.onCalendarClicked,
                        icon: Icons.calendar_month_outlined,
                        buttonText: "Consulter le \ncalendrier",
                        usePrimaryColor: false,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getHomeButton(
    BuildContext context, {
    required Size screenSize,
    required VoidCallback onPressed,
    required IconData icon,
    required String buttonText,
    bool usePrimaryColor = true,
  }) {
    final backgroundColor = (usePrimaryColor
            ? Theme.of(context).colorScheme.primaryContainer
            : minigolfPinkContainer)
        .withOpacity(0.8);
    final contentColor = usePrimaryColor
        ? Theme.of(context).colorScheme.onPrimaryContainer
        : minigolfOnPinkContainer;

    return InkWell(
      onTap: onPressed,
      child: Container(
        height: screenSize.height * 0.45,
        width: screenSize.width * 0.4,
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: contentColor,
              width: 4,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(
                  icon,
                  color: contentColor,
                  size: 85,
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    color: contentColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
