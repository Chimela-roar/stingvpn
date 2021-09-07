import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'package:stingvpn/models/server_model.dart';
import 'package:stingvpn/utility/routes.dart';
import 'package:stingvpn/widget/server_tile.dart';

// ignore: use_key_in_widget_constructors
class Server extends StatefulWidget {
  @override
  _ServerState createState() => _ServerState();
}

class _ServerState extends State<Server> {
  final List<Country> contries = [
    Country(name: 'United State'),
    Country(name: 'Canada'),
    Country(name: 'Japan'),
    Country(name: 'Koreea'),
    Country(name: 'Taiwan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Routes.sailor.navigate('/Home',
                navigationType: NavigationType.pushReplace,
                removeUntilPredicate: (route) => false,
                transitions: [SailorTransition.slide_from_left]);
          },
          child: const Icon(
            Icons.west,
            color: Color(0xFF4D42CA),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Sting VPN',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.amber,
          ),
          Expanded(
            // ignore: sized_box_for_whitespace
            child: Container(
              width: double.infinity,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text('Pick your Server'),
                    const SizedBox(height: 40),
                    Expanded(
                      child: ListView.builder(
                          itemCount: contries.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ServerName(
                                countryname: contries[index].name,
                                ischeked: contries[index].isdone,
                                checkboxcallback: (value) {
                                  contries[index].toggleDone();
                                });
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
