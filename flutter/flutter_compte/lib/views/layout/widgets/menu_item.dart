import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final Map<String,dynamic> arguments;
  const MenuItem({super.key,required this.arguments});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ListTile(
                      leading:Icon(widget.arguments["icon"] as IconData),
                      title: Text(widget.arguments["title"] as String,
                             style:const TextStyle(
                             color: Colors.black,
                             fontSize: 20
                       )),
                         onTap: (){
                            Navigator.pushNamed(context, widget.arguments["routeName"]);
                       },   
                   ),
                   const Divider(),
          ],
      );
  }
}