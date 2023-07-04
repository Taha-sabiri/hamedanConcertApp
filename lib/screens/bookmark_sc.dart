import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

List list = [
  "سیروان خسروی",
  "همدان",
  "آرمین زارعی",
  "زندوکیلی",
];

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GFSearchBar(
        searchBoxInputDecoration: InputDecoration(
          hintText: "جستجو کنید...",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 1,
              color: Color.fromRGBO(21, 70, 248, 1),
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                width: .5,
                color: Colors.grey.shade300,
              )),
          hintStyle: TextStyle(fontFamily: 'Kalame', fontSize: 15),
        ),
        searchList: list,
        searchQueryBuilder: (query, list) {
          return list
              .where((item) => item.toLowerCase().contains(query.toLowerCase()))
              .toList();
        },
        overlaySearchListItemBuilder: (item) {
          return Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              item,
              style: const TextStyle(fontSize: 18, fontFamily: 'Kalame'),
            ),
          );
        },
        onItemSelected: (item) {
          setState(() {
            print('$item');
          });
        },
      ),
    );
  }
}
