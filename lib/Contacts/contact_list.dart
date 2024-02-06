import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ContactList extends StatefulWidget {
  final avatar;
  final headtext;
  final subtext;
  final icon;
  final time;
  final iconColor;
  final txtColor;
  const ContactList(
      {super.key,
      @required this.avatar,
      @required this.headtext,
      @required this.subtext,
      @required this.icon,
      @required this.time,
      this.iconColor,
    this.txtColor});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 34,
              backgroundImage: AssetImage(widget.avatar),
              backgroundColor: Colors.red,
            ),
            SizedBox(
              width: 24.0,
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                text1(
                  text: widget.headtext,
                  size: 20.0,fontColor: widget.txtColor,
                ),
                SizedBox(
                  height: 10,
                ),
                text2(text: widget.subtext, size: 13.0),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                  child: Icon(
                widget.icon,
                color: widget.iconColor,
              )),
              SizedBox(
                height: 10,
              ),
              text2(text: widget.time, size: 13.0),
            ],
          ),
        ),
      ],
    );
  }
}

class text1 extends StatelessWidget {
  final text;
  final fontColor;

  final size;
  const text1({super.key, @required this.text, @required this.size, @required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: fontColor),
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
      style: TextStyle(
        fontSize: size,
        color: Color.fromRGBO(113, 115, 142, 1),
      ),
    );
  }
}
/***
 * 
//  *  Row(
          children: [
            CircleAvatar(
              radius: 34,
              backgroundImage: AssetImage(widget.avatar),
              backgroundColor: Colors.red,
            ),
            SizedBox(
              width: 24.0,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
             
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    text1(text: widget.headtext, size: 20.0),
                    SizedBox(
                      height: 10,
                    ),
                    text2(text: widget.subtext, size: 12.0),
                  ],
                ),
                // SizedBox(
                //   width: 170,
                // ),
                Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children:  [
                    Icon(widget.icon,
                        color: Color.fromRGBO(
                          113,
                          115,
                          142,
                          1,
                        )
                        ),
                    SizedBox(
                      height: 10,
                    ),
                    text2(text: widget.time, size: 12.0),
                  ],
                ),
              ],
            ),
          ],
        ),
 */
