import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/component.dart';

class Tff extends StatefulWidget {
  const Tff({Key? key}) : super(key: key);

  @override
  State<Tff> createState() => _TffState();
}

class _TffState extends State<Tff> {
var pass = TextEditingController();

bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        defaultFormField(
          validate: (value)
          {
            if (value.isEmpty)
            {
              return "eror";
            }
            return null;
          },
          controller: pass,
          label: "pass word",
          prefix: Icons.lock,
          suffix: ispassword?Icons.visibility:Icons.visibility_off,
          suffixpressed: ()
          {
            setState(() {
              ispassword = !ispassword;
            });
          },
          type: TextInputType.visiblePassword,
          isPassword: ispassword,
        ),
      ],
    );
  }
}
