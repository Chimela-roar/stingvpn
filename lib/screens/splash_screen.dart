import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  // AnimationController controller;
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 5), () {
  //     return Routes.sailor.navigate('/Home',
  //         navigationType: NavigationType.pushAndRemoveUntil,
  //         removeUntilPredicate: (routes) => false,
  //         transitions: [SailorTransition.fade_in]);
  //   });
  //
  //   controller = AnimationController(
  //     duration: Duration(seconds: 5),
  //     vsync: this,
  //   );
  //   controller.reverse();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset('images/Splash 1.svg'),
            const SizedBox(height: 10),
            SvgPicture.asset('images/Splash 2.svg'),
          ],
        ),
      ),
    );
  }
}
