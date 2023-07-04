import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../screens/singup_information_sc.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.grey.shade200),
          child: Center(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/76588d91-0199-4a58-9995-e6fdb79a586b.webp'))),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(56, 56, 56, 1),
                      decoration: TextDecoration.none,
                      fontFamily: 'Kalame',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    gmail,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(98, 98, 98, 1),
                      decoration: TextDecoration.none,
                      fontFamily: 'Kalame',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 37,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(21, 70, 248, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_2_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            "تغییر اطلاعات کاربری",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontFamily: 'Kalame',
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ListTile(
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
          leading: Image.asset('assets/images/Setting.png'),
          title: Text(
            "تنظیمات ",
            style: TextStyle(
                fontSize: 15,
                color: const Color.fromRGBO(98, 98, 98, 1),
                decoration: TextDecoration.none,
                fontFamily: 'Kalame',
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        ListTile(
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
          leading: Image.asset('assets/images/Info.png'),
          title: Text(
            "درباره ما ",
            style: TextStyle(
                fontSize: 15,
                color: const Color.fromRGBO(98, 98, 98, 1),
                decoration: TextDecoration.none,
                fontFamily: 'Kalame',
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        ListTile(
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
          leading: Image.asset('assets/images/Message - 4.png'),
          title: Text(
            "پیام ها ",
            style: TextStyle(
                fontSize: 15,
                color: const Color.fromRGBO(98, 98, 98, 1),
                decoration: TextDecoration.none,
                fontFamily: 'Kalame',
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        ListTile(
          trailing: GFToggle(
            onChanged: (val) {},
            value: true,
            type: GFToggleType.ios,
            enabledTrackColor: Colors.green,
          ),
          leading: Image.asset('assets/images/Notification - 2.png'),
          title: Text(
            "اعلانات ",
            style: TextStyle(
                fontSize: 15,
                color: const Color.fromRGBO(98, 98, 98, 1),
                decoration: TextDecoration.none,
                fontFamily: 'Kalame',
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        ListTile(
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
          leading: Image.asset('assets/images/Export.png'),
          title: Text(
            "دعوت دوستان ",
            style: TextStyle(
                fontSize: 15,
                color: const Color.fromRGBO(98, 98, 98, 1),
                decoration: TextDecoration.none,
                fontFamily: 'Kalame',
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
      ],
    );
  }
}
