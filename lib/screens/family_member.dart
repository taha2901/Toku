import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/component.dart';
import '../models/Item.dart';

class FamilyMember extends StatelessWidget {
  FamilyMember({Key? key}) : super(key: key);
  List<Item> familyMembers = [
    Item(
        sound: 'father.wav',
        ENname: "Father",
        image: "assets/images/family_members/family_father.png",
        JPname: "Chichioya"),
    Item(
        sound: 'daughter.wav',
        ENname: "daughter",
        image: "assets/images/family_members/family_daughter.png",
        JPname: "Musume"),
    Item(
        sound: 'grand mother.wav',
        ENname: "Grand Mather",
        image: "assets/images/family_members/family_grandmother.png",
        JPname: "Gurandomazā"),
    Item(
        sound: 'grand father.wav',
        ENname: "Grand Father",
        image: "assets/images/family_members/family_grandfather.png",
        JPname: "Ojīsan"),
    Item(
        sound: 'grand mother.wav',
        ENname: "Mother",
        image: "assets/images/family_members/family_mother.png",
        JPname: "Hahaoya"),
    Item(
        sound: 'older bother.wav',
        ENname: "Older Brother",
        image: "assets/images/family_members/family_older_brother.png",
        JPname: "Ani"),
    Item(
        sound: 'son.wav',
        ENname: "Son",
        image: "assets/images/family_members/family_son.png",
        JPname: "Musuko"),
    Item(
        sound: 'older sister.wav',
        ENname: "older sister",
        image: "assets/images/family_members/family_older_sister.png",
        JPname: "Ane"),
    Item(
        sound: 'younger brohter.wav',
        ENname: "younger brohter",
        image: "assets/images/family_members/family_younger_brother.png",
        JPname: "Otōto"),
    Item(
        sound: 'younger sister.wav',
        ENname: "younger sister",
        image: "assets/images/family_members/family_younger_sister.png",
        JPname: "Imōto"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff527f30),
          title: Text("Family Members"),
        ),
        body:ListView.separated(
          itemBuilder: (context,index) {
            return ListItem(number: familyMembers[index], color: Color(0xff527f30), itemType: 'family_members',);
          },
          separatorBuilder: (context,index) => SizedBox(height: 6.0,),
          itemCount: familyMembers.length,
        )
    );
  }
}
