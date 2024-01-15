import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/register/regisyer_viem.dart';

class CreateAccountSentence extends StatelessWidget {
  const CreateAccountSentence({super.key, required this.informationText, required this.actionText, this.onPressed});
final String informationText;
final String actionText;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(informationText),
                TextButton(
                    onPressed: onPressed,
                    child: Text(
                      actionText,
                      style: TextStyle(color: Colors.teal[400]),
                    ))
              ],
            );
  }
}