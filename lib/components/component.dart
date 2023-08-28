import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Item.dart';

import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class category extends StatelessWidget {
  category({this.color, this.text, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35.0),
            color: color,
          ),
          padding: EdgeInsets.only(left: 20.0),
          alignment: Alignment.centerLeft,
          height: 100,
          width: double.infinity,
          child: Text(
            text!,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      required this.number,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Item number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 100,
        color: color,
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                color: Color(0xfffefce0), child: Image.asset(number.image!)),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "${number.JPname}",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  Text(
                    "${number.ENname}",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
                onPressed: () {
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/$itemType/');
                  player.play(number.sound);
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}

class phraseItem extends StatelessWidget {
  const phraseItem(
      {Key? key,
      required this.number,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Item number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 100,
        color: color,
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "${number.JPname}",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  Text(
                    "${number.ENname}",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
                onPressed: () {
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/$itemType/');
                  player.play(number.sound);
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}

class defaultButton extends StatelessWidget {
  defaultButton(
      {this.color, this.text, this.function, this.radius, this.width});
  double? width;
  Color? color;
  Function()? function;
  String? text;
  double? radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: color?? Colors.blue,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text!.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class defaultFormField extends StatelessWidget {
  defaultFormField(
      {this.controller,
      this.type,
      this.validate,
      this.label,
      this.onchange,
      this.onsubmit,
      this.prefix,
      this.suffix,
      this.suffixpressed,
      this.isPassword});
  TextEditingController? controller;
  String? label;
  IconData? prefix;
  IconData? suffix;
  Function(String)? validate;
  Function()? onchange;
  Function()? onsubmit;
  Function()? suffixpressed;
  bool? isPassword;
  TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: IconButton(
            onPressed: () {
              suffixpressed!();
            },
            icon: Icon(suffix)),
      ),
      validator: (value) => validate!(value!),
      obscureText: isPassword  ?? false ,
      keyboardType: type,
      onChanged: onchange!(),
      onFieldSubmitted: onsubmit!(),
    );
  }
}
