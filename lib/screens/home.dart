import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/screens/family_member.dart';
import 'package:toku/screens/phrases.dart';

import '../components/component.dart';
import 'TFF.dart';
import 'colorscreen.dart';
import 'numberscreen.dart';

class TokuApp extends StatefulWidget {
  @override
  State<TokuApp> createState() => _TokuAppState();
}

class _TokuAppState extends State<TokuApp> {
 var email = TextEditingController();

 var pass = TextEditingController();

 bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff483228),
        title: Text("Toku"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            category(
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) {
                          return NumberScreen();
                        }
                    )
                );
              },
              color: Color(0xfff8942f),
              text: "Numbers",
            ),
            SizedBox(height: 20.0,),
            category(
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) {
                          return FamilyMember();
                        }
                    )
                );
              },
              color: Color(0xff527f30),
              text: "Family Mameber",
            ),
            SizedBox(height: 20.0,),
            category(
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) {
                          return Colorscreen();
                        }
                    )
                );
              },
              color: Color(0xff7c3fa0),
              text: "Colors",
            ),
            SizedBox(height: 20.0,),
            category(
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) {
                          return Phrases();
                        }
                    )
                );
              },
              text : "phrases",
              color: Color(0xff46a4c9),
            ),
            SizedBox(height: 10.0,),
            defaultButton(
              radius: 20.0,
              text: "Text Here",
            ),
            category(
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) {
                          return Tff();
                        }
                    )
                );
              },
              text : "Enter Here",
              color: Colors.black,
            ),
          ],
        ),
      ),
    );

  }
}
