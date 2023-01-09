import 'package:flutter_sozluk_fire/pages/forgot_password.dart';
import 'package:flutter_sozluk_fire/pages/home_page.dart';
import 'package:flutter_sozluk_fire/tabs/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title() {
    return const Text('BankoApp');
  }

  Widget _anonimButton() {
    return ElevatedButton(
        child: Text(
          'Anonim Girişi',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 120, vertical: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        });
  }

  Widget _sifremiUnuttum() {
    return GestureDetector(
      child: Text(
        'Şifremi Unuttum',
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Theme.of(context).colorScheme.secondary,
          fontSize: 15,
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ForgotPasswordPage();
        }));
      },
    );
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0XFFFFA101)),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: 'Email',
        fillColor: Colors.grey[200],
        filled: true,
        labelText: title,
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Yanlış email veya şifre');
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Text(
        isLogin ? '  Giriş' : 'Kayıt',
        style: TextStyle(
            fontStyle: FontStyle.italic, fontSize: 15, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 130, vertical: 12),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }

  Widget _loginOrRegisterButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(
        isLogin ? 'Kayıt Ol' : 'Giriş Yap',
        style: TextStyle(
            fontStyle: FontStyle.italic, fontSize: 15, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 130, vertical: 12),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFA101),
        toolbarHeight: 80,
        leadingWidth: 80,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _anonimButton(),
            SizedBox(
              height: 30,
            ),
            _entryField('Email', _controllerEmail),
            SizedBox(
              height: 10,
            ),
            _entryField('Password', _controllerPassword),
            SizedBox(
              height: 10,
            ),
            _errorMessage(),
            SizedBox(
              height: 10,
            ),
            _submitButton(),
            SizedBox(
              height: 10,
            ),
            _loginOrRegisterButton(),
            SizedBox(
              height: 10,
            ),
            _sifremiUnuttum(),
          ],
        ),
      ),
    );
  }
}
