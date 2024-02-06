import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Contacts extends StatelessWidget {
  final avatar;
  final headtext;
  final subtext;
  final icon;
  final time;
  final iconColor;
  final txtColor;
  const Contacts(
      {super.key,
      required this.avatar,
      required this.headtext,
      required this.subtext,
      required this.icon,
      required this.time,
      required this.iconColor,
      required this.txtColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(avatar),
              radius: 35,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text1(text: headtext, size: 20.0, color:txtColor),
                SizedBox(
                  height: 10,
                ),
                text2(text: subtext, size: 13.0)
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
                child: Icon(
              icon,
              color: iconColor,
            )),
            SizedBox(
              height: 10,
            ),
            text2(text: time, size: 13.0),
          ],
        ),
      ],
    );
  }
}

class text1 extends StatelessWidget {
  final text;
  final color;
  final size;
  const text1({super.key, @required this.text, @required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color),
    );
  }
}

class text2 extends StatelessWidget {
  final text;

  final size;
  const text2({super.key, @required this.text, @required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        fontSize: size,
        color: Color.fromRGBO(113, 115, 142, 1),
      ),
    );
  }
}
