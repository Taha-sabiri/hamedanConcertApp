import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/concert.dart';

class ConcertSc extends StatelessWidget {
  final int index;
  const ConcertSc({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(child: Icon(Icons.arrow_forward_ios)),
                ),
              )
            ],
          )),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color.fromARGB(0, 0, 0, 0),
                Colors.black,
              ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
              width: double.infinity,
              height: 435,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(concert[index].image))),
            ),
          ),
          Positioned(
            right: 15,
            top: 280,
            child: Text(
              concert[index].headertit,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Kalame',
                  fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(47), color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/icon.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "همدان کنسرت",
                                style: TextStyle(
                                    fontFamily: 'Kalame',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13),
                              ),
                              Text(
                                "علیرضا رحمانیان",
                                style: TextStyle(
                                    fontFamily: 'Kalame',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        SizedBox(
                          height: 37,
                          width: 80,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Color.fromRGBO(21, 70, 248, 1),
                                ),
                                borderRadius: BorderRadius.circular(7)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.bookmark_outline_outlined,
                                  color: Color.fromRGBO(21, 70, 248, 1),
                                ),
                                Text(
                                  "ذخیره کنید",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromRGBO(21, 70, 248, 1),
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Kalame',
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 37,
                          width: 37,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(21, 70, 248, 1),
                                borderRadius: BorderRadius.circular(7)),
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: SizedBox(
                      child: Text(concert[index].tit,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(56, 56, 56, 1),
                              decoration: TextDecoration.none,
                              fontFamily: 'Kalame',
                              fontWeight: FontWeight.w300)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  " زمان:",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(21, 70, 248, 1),
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Kalame',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  concert[index].time,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(56, 56, 56, 1),
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Kalame',
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Image(image: AssetImage("assets/images/Clock.png"))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  " مکان:",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(21, 70, 248, 1),
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Kalame',
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  concert[index].loc,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(56, 56, 56, 1),
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Kalame',
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Image(
                                image: AssetImage("assets/images/Location.png"))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
