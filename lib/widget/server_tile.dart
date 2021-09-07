import 'package:flutter/material.dart';

class ServerName extends StatelessWidget {
  final bool ischeked;
  final String countryname;
  final Function checkboxcallback;

  ServerName({required this.countryname, required this.ischeked,  required this.checkboxcallback });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(),
      title: Text(countryname),
      trailing: Checkbox(
          value: ischeked,
          onChanged: (value){
            checkboxcallback(value);
          }
      ),
    );
  }
}
