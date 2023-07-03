import 'package:flutter/material.dart';
import 'package:hamedanconcert/screens/singup_otp_sc.dart';

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
                      textAlign: TextAlign.left,
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
                                  width: 1,
                                  color: Color.fromRGBO(0, 0, 0, 0.26))),
                          hintText: '۹۸+ ',
                          hintStyle: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(158, 158, 158, 1),
                            decoration: TextDecoration.none,
                            fontFamily: 'Kalame',
                            fontWeight: FontWeight.w700,
                          ),
                          labelText: "شماره تلفن",
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const OtpSc()));
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
                          "دریافت کد",
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
        ));
  }
}
