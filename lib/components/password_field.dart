import 'package:flutter/material.dart';
import 'package:bi_fikir/components/text_field.dart';
import 'package:bi_fikir/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryDarkColor,
        decoration: InputDecoration(
          hintText: "Şifre",
          icon: Icon(
            Icons.lock,
            color: kPrimaryDarkColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryDarkColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
