import 'dart:ui';

import 'package:flutter_sozluk_fire/tabs/anasayfa.dart';
import 'package:flutter_sozluk_fire/tabs/fourthtab.dart';
import 'package:flutter_sozluk_fire/tabs/thirdtab.dart';
import 'package:flutter_sozluk_fire/tabs/sayfagecis.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFFA101),
            toolbarHeight: 80,
            leadingWidth: 80,
          ),
          body: Column(
            children: [
              TabBar(
                  isScrollable: true,
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  indicatorPadding: EdgeInsets.zero,
                  indicatorWeight: 3,
                  tabs: [
                    Tab(
                      text: "Ana Sayfa",
                      icon: Icon(
                        Icons.home,
                        color: Color(0xFFFFA101),
                      ),
                    ),
                    Tab(
                      text: "Kelimeler",
                      icon: Icon(
                        Icons.book,
                        color: Color(0xFFFFA101),
                      ),
                    ),
                    Tab(
                      text: "Kelime Öğren",
                      icon: Icon(
                        Icons.library_add,
                        color: Color(0xFFFFA101),
                      ),
                    ),
                  ]),
              Expanded(
                  child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                  FourthTab(),
                ],
              ))
            ],
          ),
        ));
  }
}
