import 'package:flutter/material.dart';

import 'home_page.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  final globlekeyemail = GlobalKey<FormState>();
  final TextControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: globlekeyemail,
              child: TextFormField(
                onChanged: (value) {
                  globlekeyemail.currentState!.validate();
                },
                controller: TextControler,
                validator: (value) {
                  final bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);

                  if (emailValid) {
                    return null;
                  } else {
                    return "Please enter valid Email Id";
                  }
                },
                decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print("hello");
                  if (globlekeyemail.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home_page(),
                        ));
                  }
                },
                child: Text("Signup"))
          ],
        ),
      ),
    );
  }
}
