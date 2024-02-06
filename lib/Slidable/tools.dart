import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/material.dart';

class Components extends StatefulWidget {
  final icon1;
  final Color1;
  final label1;
  
  final icon2;
  final Color2;
  final label2;

  final title;
  final subtitle;
  final leading;
  const Components({super.key,@required this.icon1,@required this.label1,@required this.Color1, @required this.icon2,@required this.label2,@required this.Color2,@required this.title,@required this.subtitle,@required this.leading});

  @override
  State<Components> createState() => _ComponentsState();
}

class _ComponentsState extends State<Components> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      // Specify a key if the Slidable is dismissible.
      key: const ValueKey(0),

      // The start action pane is the one at the left or the top side.
      startActionPane: ActionPane(
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion(),

        // A pane can dismiss the Slidable.
        dismissible: DismissiblePane(onDismissed: () {}),

        // All actions are defined in the children parameter.
        children: [
          // A SlidableAction can have an icon and/or a label.
          SlidableAction(
            onPressed: ((context) {}),
            backgroundColor: widget.Color1,
            foregroundColor: Colors.white,
            icon: widget.icon1,
            label: widget.label1,
          ),
          SlidableAction(
            onPressed: ((context) {}),
            backgroundColor: widget.Color2,
            foregroundColor: Colors.grey[350],
            icon: widget.icon2,
            label: widget.label2,
          ),
        ],
      ),

      child: Container(
        color: Colors.grey[300],
        child: ListTile(
          title: Text(widget.title),
          subtitle: Text(widget.subtitle),
          leading: widget.leading,
        ),
      ),
    );
  }
}
