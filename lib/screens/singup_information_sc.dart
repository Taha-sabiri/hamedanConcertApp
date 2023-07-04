import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hamedanconcert/screens/home_sc.dart';
import 'package:hamedanconcert/screens/navbarpage.dart';
import 'package:hamedanconcert/screens/singup_otp_sc.dart';

class Singupinfo extends StatefulWidget {
  const Singupinfo({super.key});

  @override
  State<Singupinfo> createState() => _SingupinfoState();
}

final myControllername = TextEditingController();
final String name = myControllername.text;

final myControllergmail = TextEditingController();
final String gmail = myControllergmail.text;

class _SingupinfoState extends State<Singupinfo> {
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myControllername.dispose();
    myControllergmail.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
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
                "لطفااطلاعات کاربری خود را وارد کنید",
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(54, 54, 54, 1),
                    decoration: TextDecoration.none,
                    fontFamily: 'Kalame',
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 31,
              ),
              SizedBox(
                height: 54,
                width: 310,
                child: TextFormField(
                  controller: myControllername,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(98, 98, 98, 1),
                    decoration: TextDecoration.none,
                    fontFamily: 'Kalame',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(21, 70, 248, 1),
                      )),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.26))),
                      hintText: "نام و نام خانوادگی خود را وارد کنید ...",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(158, 158, 158, 1),
                        decoration: TextDecoration.none,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700,
                      ),
                      labelText: "نام و نام خانوادگی(ضروری)",
                      labelStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(98, 98, 98, 1),
                        decoration: TextDecoration.none,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700,
                      ),
                      floatingLabelAlignment: FloatingLabelAlignment.start),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 54,
                width: 310,
                child: TextFormField(
                  controller: myControllergmail,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(98, 98, 98, 1),
                    decoration: TextDecoration.none,
                    fontFamily: 'Kalame',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(21, 70, 248, 1),
                      )),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.26))),
                      hintText: 'ایمیل خود را وارد کنید ...',
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(158, 158, 158, 1),
                        decoration: TextDecoration.none,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700,
                      ),
                      labelText: "ایمیل",
                      labelStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(98, 98, 98, 1),
                        decoration: TextDecoration.none,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700,
                      ),
                      floatingLabelAlignment: FloatingLabelAlignment.start),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              InkWell(
                onTap: () {
                  GFToast.showToast(
                    'حساب کاربری با موفقیت ساخته شد',
                    context,
                    toastPosition: GFToastPosition.BOTTOM,
                    backgroundColor: Color.fromRGBO(21, 70, 248, 1),
                    textStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700),
                  );
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: SizedBox(
                  height: 54,
                  width: 310,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(21, 70, 248, 1),
                        borderRadius: BorderRadius.circular(7)),
                    child: Text(
                      "تکمیل ثبت نام",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontFamily: 'Kalame',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
