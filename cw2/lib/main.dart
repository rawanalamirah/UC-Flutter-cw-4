import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget prayerRows(
      {required String prayer, required String time, required Color? color}) {
    return Container(
      color: color,
      height: 80,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            time,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: "Times New Roman",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            prayer,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Times New Roman',
            ),
          ),
        ),
      ]),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.square,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "العاصمة",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.settings, color: Colors.white),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '12:28',
                  style: TextStyle(
                    fontSize: 90,
                    color: Colors.white,
                    fontFamily: "Times New Roman",
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "31",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: "Times New Roman",
                    ),
                  ),
                )
              ],
            ),
            Text(
              "باقي علي الأذان",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.blue[700],
                  width: 400,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        '٢١ فبراير - ٢ رجب',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                ),
                prayerRows(
                    prayer: "الفجر", time: "3:37 AM", color: Colors.blue[700]),
                prayerRows(
                    prayer: "الشروق", time: "5:04 AM", color: Colors.blue[700]),
                prayerRows(
                    prayer: "الظهر", time: "11:45 AM", color: Colors.white38),
                prayerRows(
                    prayer: "العصر", time: "3:21 AM", color: Colors.blue[700]),
                prayerRows(
                    prayer: "المغرب", time: "6:25 AM", color: Colors.blue[700]),
                prayerRows(
                    prayer: "العشاء", time: "7:50 AM", color: Colors.blue[700]),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.indigo[900],
      ),
    );
  }
}
