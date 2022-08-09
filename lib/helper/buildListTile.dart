import 'package:flutter/material.dart';
class BuildListTile extends StatelessWidget {
  BuildListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.tap,
    this.subtitle,
     this.fsize,
     this.f1size,

  }) : super(key: key);
  Widget icon;
  String title;
  final VoidCallback tap;
String? subtitle;
double? fsize;
double? f1size;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: fsize),
      ),
      subtitle: Text('${subtitle}',
        style: TextStyle( fontSize: f1size),
      ),
      onTap: tap,
    );
  }
}
