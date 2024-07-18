import 'dart:async';

import 'package:flutter/material.dart';
import 'package:giaheto/plants/difenbakhia/difen.dart';
import 'package:giaheto/plants/ficus/ficus.dart';
import 'package:giaheto/plants/sansveria/sansveria.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> searchResults = [];

  final Map<String, Widget> plantsPages = {
    'سانسوریا': Sansveria(key: null,),
    'دیفن باخیا' : Difen(key: null,),
    'سینگونیوم ' : Difen(key: null,),
    'فیکوس': Ficus(key: null,),
    // اضافه کردن سایر گیاهان و صفحات مربوطه در اینجا
  };

void performSearch(String query) {
  // اگر رشته جستجو خالی است، لیست نتایج را خالی کن و از متد خارج شو
  if (query.isEmpty) {
    setState(() {
      searchResults = [];
    });
    return;
  }

  List<Widget> results = [];
  // جستجو برای گیاهانی که نام آن‌ها شامل رشته جستجو می‌شود
  plantsPages.forEach((name, page) {
    if (name.contains(query.toLowerCase())) {
      // افزودن آیتم به نتایج جستجو
      results.add(Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Align(alignment: Alignment.centerRight,child: Text(name, style: const TextStyle(fontFamily: 'aseman', fontSize:25))),
          onTap: () {
            // ناوبری به صفحه گیاه انتخاب شده
            Navigator.push(context, MaterialPageRoute(builder: (context) => page));
          },
        ),
      ));
    }
  });

  setState(() {
    searchResults = results;
  });
}

  String currentTime = '';
  String greeting = '';

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 50), (Timer timer) {
      setState(() {
        final now = DateTime.now();
        final timeFormat = DateFormat('HH:mm');
        currentTime = timeFormat.format(now);
        greeting = _getGreeting(now.hour);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(style: BorderStyle.solid),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              color: Colors.amber,
            ),
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 254, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.access_time,
                            ),
                            Text(
                              ' ساعت ',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'aseman',
                                  color: Color.fromARGB(255, 0, 149, 109)),
                            ),
                          ],
                        ),
                        Text(
                          ' $currentTime',
                          style: const TextStyle(
                              fontSize: 30,
                              fontFamily: 'aseman',
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      if (greeting == ' صبح بخیر')
                        const Icon(Icons.wb_sunny, color: Colors.amber),
                      if (greeting == ' ظهر بخیر')
                        const Icon(Icons.brightness_5, color: Colors.amber),
                      if (greeting == ' شبت پرتقالـی  ')
                        const Icon(
                          Icons.nightlight_round,
                          color: Colors.amber,
                        ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          greeting,
                          style: const TextStyle(
                              fontSize: 30,
                              fontFamily: 'aseman',
                              color: Color.fromARGB(255, 0, 149, 109)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              onChanged: performSearch,
              decoration: InputDecoration(
                labelText: 'جستجوی گیاه...',
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: searchResults,
            ),
          ),
        ],
      ),
    );
  }

  String _getGreeting(int hour) {
    if (hour < 12) {
      return ' صبح بخیر';
    } else if (hour < 18) {
      return ' ظهر بخیر';
    } else {
      return ' شبت پرتقالـی  ';
    }
  }
}
