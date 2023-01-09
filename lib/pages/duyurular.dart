import 'package:flutter/material.dart';

class DuyuruPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Duyurular'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(16),
                    height: 140,
                    width: 300,
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(16),
                    height: 90,
                    width: 300,
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(16),
                    height: 70,
                    width: 300,
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(16),
                    height: 70,
                    width: 300,
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(16),
                    height: 70,
                    width: 300,
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
