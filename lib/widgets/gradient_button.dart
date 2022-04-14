import 'package:flutter/material.dart';
import 'package:healthify/onboard/login_page.dart';
import 'package:healthify/utils/app_resource.dart';

class GradientButton extends StatelessWidget {
  GradientButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.colors,
    required this.textColor,
    this.bgColor = Colors.white,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  final String text;
  final Function onPressed;
  final List colors;
  final Color textColor;
  Color bgColor;
  Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 32,
      ),
      height: 44,
      width: MediaQuery.of(context).size.width * .8,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            colors[0],
            colors[1],
            colors[2],
            colors[3],
          ],
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: TextButton(
        onPressed: () {
          onPressed();
          // Navigator.pushNamed(context, '/onboard/login');
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
