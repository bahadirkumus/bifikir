import 'package:bi_fikir/Screens/mainApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class add extends StatefulWidget {
  const add({Key key}) : super(key: key);

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeBGColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text("Şuanda yeni fikir alamıyoruz daha sonra lütfen tekrar deneyiniz!",
                        style: TextStyle(
                          fontSize: 36.0,
                          color: kLightColor,
                        )),
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
