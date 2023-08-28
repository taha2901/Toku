import 'package:flutter/cupertino.dart';

class Item{
  final String sound;
  final String? image;
  final String JPname;
  final String ENname;

  Item({
    required this.sound,
    required this.ENname,
    this.image,
    required this.JPname,
  });
}
