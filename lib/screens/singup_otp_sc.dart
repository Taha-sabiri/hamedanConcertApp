import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens/singup_information_sc.dart';
import '../screens/singup_number_sc.dart';

class OtpSc extends StatelessWidget {
  const OtpSc({super.key});

  @override
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
                "کد ارسال شده به شماره $number را وارد کنید",
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 68,
                        width: 54,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).unfocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                            )),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        )),
                    SizedBox(
                        height: 68,
                        width: 54,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                            )),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        )),
                    SizedBox(
                        height: 68,
                        width: 54,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                            )),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        )),
                    SizedBox(
                        height: 68,
                        width: 54,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                            )),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.fromRGBO(21, 70, 248, 1),
                            )),
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 31,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Singupinfo()));
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
                      " ثبت نام",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontFamily: 'Kalame',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SizedBox(
                  height: 54,
                  width: 310,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Color.fromRGBO(21, 70, 248, 1),
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: Text(
                      "اصلاح شماره تلفن",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(21, 70, 248, 1),
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
