import 'package:flutter/material.dart';
import 'package:bi_fikir/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Henüz üye değil misiniz ? " : "Zaten hesabınız var mı ? ",
          style: TextStyle(color: kPrimaryDarkColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Üye Ol !" : "Giriş Yapın !",
            style: TextStyle(
              color: kPrimaryDarkColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
