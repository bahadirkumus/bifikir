import 'package:bi_fikir/Screens/WelcomePage/welcome_page_screen.dart';
import 'package:bi_fikir/Screens/mainApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class profil extends StatefulWidget {
  const profil({Key key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeBGColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(128.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Çıkış Yap"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
