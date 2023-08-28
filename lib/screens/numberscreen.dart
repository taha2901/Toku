import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/component.dart';
import '../models/Item.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen({Key? key}) : super(key: key);

  List<Widget> getList(List<Item> numbers) {
    List<Widget> itemList = [];
    for (int i = 0; i < numbers.length; i++)
        {
          itemList.add(ListItem(number: numbers[i], color: Color(0xfff8942f), itemType: 'numberscreen',));
        }
    return itemList;
  }

  
  List<Item> numbers = [
    Item(
        sound: 'number_one_sound.mp3',
        ENname: "One",
        image: "assets/images/numbers/number_one.png",
        JPname: "ichi"),
    Item(
      sound: 'number_two_sound.mp3',
        ENname: "Two",
        image: "assets/images/numbers/number_two.png",
        JPname: "ni"),
    Item(
      sound: 'number_three_sound.mp3',
        ENname: "Three",
        image: "assets/images/numbers/number_three.png",
        JPname: "san"),
    Item(
      sound: 'number_four_sound.mp3',
        ENname: "Four",
        image: "assets/images/numbers/number_four.png",
        JPname: "yon"),
    Item(
      sound: 'number_five_sound.mp3',
        ENname: "Five",
        image: "assets/images/numbers/number_five.png",
        JPname: "go"),
    Item(
      sound: 'number_six_sound.mp3',
        ENname: "Six",
        image: "assets/images/numbers/number_six.png",
        JPname: "roku"),
    Item(
      sound: 'number_seven_sound.mp3',
        ENname: "Seven",
        image: "assets/images/numbers/number_seven.png",
        JPname: "nana"),
    Item(
      sound: 'number_eight_sound.mp3',
        ENname: "Eight",
        image: "assets/images/numbers/number_eight.png",
        JPname: "hachi"),
    Item(
      sound: 'number_nine_sound.mp3',
        ENname: "Nine",
        image: "assets/images/numbers/number_nine.png",
        JPname: "Kyu"),
    Item(
      sound: 'number_ten_sound.mp3',
        ENname: "Ten",
        image: "assets/images/numbers/number_ten.png",
        JPname: "JU"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Numbers"),
      ),
      body:ListView.separated(
        itemBuilder: (context,index) {
          return ListItem(number: numbers[index], color: Color(0xfff8942f), itemType: 'numbers',);
        },
        separatorBuilder: (context,index) => SizedBox(height: 6.0,),
        itemCount: numbers.length,
      )
    );
  }
}
