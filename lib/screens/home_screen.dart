import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'package:stingvpn/utility/routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Color(0xFF4D42CA),
        ),
        centerTitle: true,
        title: const Text(
          'Sting VPN',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              // height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        primary: Colors.white,
                        onPrimary: const Color(0xFF4D42CA),
                        side: const BorderSide(
                            color: Color(0xFF4D42CA), width: 7)),
                    child: Container(
                        width: 200,
                        height: 200,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: const Icon(
                          Icons.power_settings_new_outlined,
                          size: 100,
                          color: Color(0xFF4D42CA),
                        )),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: const Color(0xFF4D42CA),
                      onPressed: () {
                        Routes.sailor.navigate('/Server',
                            navigationType: NavigationType.pushReplace,
                            removeUntilPredicate: (route) => false,
                            transitions: [SailorTransition.slide_from_right]);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Get Premium',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: const Color(0xFFF9F5D1),
            padding: const EdgeInsets.all(15),
            child: Row(
              children:const <Widget>[
                CircleAvatar(),
                SizedBox(
                  width: 10,
                ),
                Text('United State Of America'),
                Spacer(),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
