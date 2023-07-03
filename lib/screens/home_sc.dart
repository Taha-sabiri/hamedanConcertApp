import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamedanconcert/model/concert.dart';
import 'package:hamedanconcert/model/news.dart';

import 'package:hamedanconcert/screens/concert_sc.dart';
import 'package:hamedanconcert/screens/news_sc.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/Ali-Zandvakili-Ziba-Tarin-Roya-Music-fa.com_.jpg'),
            ),
            Icon(Icons.menu),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    "آخرین اخبار ",
                    style: TextStyle(
                        color: Color.fromRGBO(54, 54, 54, 1),
                        fontSize: 20,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "مشاهده ی همه ",
                    style: TextStyle(
                        color: Color.fromRGBO(21, 70, 248, 1),
                        fontSize: 13,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                height: 390,
                child: ListView.builder(
                    itemCount: news.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => NewsSc(index: index)));
                          },
                          child: Container(
                            height: 340,
                            width: 250,
                            child: Stack(children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(news[index].image),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10.0, sigmaY: 10.0),
                                    child: Container(
                                      height: 150,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(75, 0, 0, 0)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              news[index].headertit,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontFamily: 'Kalame',
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              news[index].tit,
                                              softWrap: true,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontFamily: 'Kalame',
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      CupertinoIcons.clock,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      news[index].time,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13,
                                                          fontFamily: 'Kalame',
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "کنسرت پاپ",
                        style: TextStyle(
                            color: Color.fromRGBO(21, 70, 248, 1),
                            fontSize: 13,
                            fontFamily: 'Kalame',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "کنسرت سنتی",
                        style: TextStyle(
                            color: Color.fromRGBO(158, 158, 158, 1),
                            fontSize: 13,
                            fontFamily: 'Kalame',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        " کنسرت ارکستر ",
                        style: TextStyle(
                            color: Color.fromRGBO(158, 158, 158, 1),
                            fontSize: 13,
                            fontFamily: 'Kalame',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "جدید ترین کنسرت ها",
                        style: TextStyle(
                            color: Color.fromRGBO(158, 158, 158, 1),
                            fontSize: 13,
                            fontFamily: 'Kalame',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "پربازدید ترین",
                        style: TextStyle(
                            color: Color.fromRGBO(158, 158, 158, 1),
                            fontSize: 13,
                            fontFamily: 'Kalame',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Divider(),
            ),
            Column(
              children: [
                for (int i = 0; i < concert.length; i++)
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ConcertSc(index: i)));
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(concert[i].image))),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              concert[i].headertit,
                              style: TextStyle(
                                  color: Color.fromRGBO(54, 54, 54, 1),
                                  fontSize: 13,
                                  fontFamily: 'Kalame',
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              width: 270,
                              child: Text(
                                concert[i].tit,
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    color: Color.fromRGBO(54, 54, 54, 1),
                                    fontSize: 13,
                                    fontFamily: 'Kalame',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 56,
                                  height: 17,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.blue),
                                    child: Text(
                                      concert[i].group,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'Kalame',
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.bookmark_outline),
                                    Icon(Icons.ios_share)
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
