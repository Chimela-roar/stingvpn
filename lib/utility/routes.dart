import 'package:sailor/sailor.dart';
import 'package:stingvpn/screens/Home_screen.dart';
import 'package:stingvpn/screens/server_screen.dart';
import 'package:stingvpn/screens/splash_screen.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoutes([
      SailorRoute(
          name: '/Splash',
          builder: (context, args, params) {
            return const Splash();
          }),
      SailorRoute(
          name: '/Home',
          builder: (context, args, params) {
            return const Home();
          }),
          SailorRoute(
          name: '/Server',
          builder: (context, args, params) {
            return Server();
          }),
    ]);
  }
}
