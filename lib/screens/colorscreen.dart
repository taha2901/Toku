import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/component.dart';
import '../models/Item.dart';



class Colorscreen extends StatelessWidget {
  Colorscreen({Key? key}) : super(key: key);
  List<Item> colors = [
    Item(
        sound: 'black.wav',
        ENname: "Black",
        image: "assets/images/colors/color_black.png",
        JPname: "Kuro"),
    Item(
        sound: 'brown.wav',
        ENname: "Brown",
        image: "assets/images/colors/color_brown.png",
        JPname: "Chairo"),
    Item(
        sound: 'dusty yellow.wav',
        ENname: "dusty Yellow",
        image: "assets/images/colors/color_dusty_yellow.png",
        JPname: "Dasutiierō"),
    Item(
        sound: 'gray.wav',
        ENname: "Gray",
        image: "assets/images/colors/color_gray.png",
        JPname: "Gurē"),
    Item(
        sound: 'green.wav',
        ENname: "Green",
        image: "assets/images/colors/color_green.png",
        JPname: "Midori"),
    Item(
        sound: 'red.wav',
        ENname: "Red",
        image: "assets/images/colors/color_red.png",
        JPname: "Aka"),
    Item(
        sound: 'white.wav',
        ENname: "white",
        image: "assets/images/colors/color_white.png",
        JPname: "Shiro"),
    Item(
        sound: 'yellow.wav',
        ENname: "yellow",
        image: "assets/images/colors/yellow.png",
        JPname: "Kiiro"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff542a6d),
        title: Text("Colors"),
      ),
        body:ListView.separated(
          itemBuilder: (context,index) {
            return ListItem(number: colors[index], color: Color(0xff542a6d), itemType: 'colors',);
          },
          separatorBuilder: (context,index) => SizedBox(height: 6.0,),
          itemCount: colors.length,
        )
    );
  }
}
