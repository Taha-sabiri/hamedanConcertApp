import 'package:flutter/material.dart';

class SingupNum extends StatelessWidget {
  const SingupNum({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "همدان کنسرت",
                    style: TextStyle(
                        color: Color.fromRGBO(21, 70, 248, 1),
                        fontFamily: 'Kenar',
                        decoration: TextDecoration.none,
                        fontSize: 40),
                  ),
                  Text(
                    "لطفا شماره خود را برای ثبت نام وارد کنید",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(54, 54, 54, 1),
                        decoration: TextDecoration.none),
                  ),
                  TextFormField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                        hintText: '+۹۸ ',
                        labelText: "شماره تلفن",
                        floatingLabelAlignment: FloatingLabelAlignment.start),
                  ),
                  SizedBox(
                    height: 54,
                    width: 310,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(21, 70, 248, 1),
                          borderRadius: BorderRadius.circular(7)),
                      child: Text("دریافت کد"),
                    ),
                  )
                ]),
          ),
        ));
  }
}
