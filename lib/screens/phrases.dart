import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/component.dart';
import '../models/Item.dart';

class Phrases extends StatelessWidget {
  Phrases({Key? key}) : super(key: key);
  List<Item> phrases = [
    Item(
        sound: 'are_you_coming.wav',
        ENname: "are_you_coming",
        JPname: "Anata wa kite imasu"),
    Item(
        sound: 'dont_forget_to_subscribe.wav',
        ENname: "dont_forget_to_subscribe",
        JPname: "Kōdoku o wasurenaide kudasai"),
    Item(
        sound: 'how_are_you_feeling.wav',
        ENname: "how_are_you_feeling",
        JPname: "Go kibun wa ikagadesu ka"),
    Item(
        sound: 'i_love_anime.wav',
        ENname: "i_love_anime.wav",
        JPname: "Watashi wa anime ga daisukidesu"),
    Item(
        sound: 'i_love_programming.wav',
        ENname: "i_love_programming",
        JPname: "I _ love _ programming"),
    Item(
        sound: 'programming_is_easy.wav',
        ENname: "programming_is_easy",
        JPname: "Puroguramingu _ is _ easy. Wav"),
    Item(
        sound: 'what_is_your_name.wav',
        ENname: "what_is_your_name",
        JPname: "Namae wa nandesu ka"),
    Item(
        sound: 'where_are_you_going.wav',
        ENname: "where_are_you_going",
        JPname: "Doko ni iku no"),
    Item(
        sound: 'yes_im_coming.wav',
        ENname: "yes_im_coming",
        JPname: "Hai, kimasu"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46a4c9),
        title: Text("Colors"),
      ),
        body:ListView.separated(
          itemBuilder: (context,index) {
            return phraseItem(number: phrases[index], color: Color(0xff46a4c9), itemType: 'phrases',);
          },
          separatorBuilder: (context,index) => SizedBox(height: 6.0,),
          itemCount: phrases.length,
        )
    );
  }
}
