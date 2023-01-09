import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_sozluk_fire/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sozluk_fire/pages/duyurular.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
              child: Text(
                '     Profilim       ',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {}),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              child: Text(
                '        Öğrenilen kelimeler        ',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog('');
                    });
              }),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              child: Text(
                '         Rasgele Kelime Öğrenme        ',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DuyuruPage()));
              }),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              child: Text(
                '        Çıkış Yap        ',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              }),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class SimpleDialog extends StatelessWidget {
  final title;
  SimpleDialog(this.title);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Bilgilendirme'),
      content: Text(title),
      actions: [
        new ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Anladım',
            ))
      ],
    );
  }
}
