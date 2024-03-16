import 'package:flutter/material.dart';
import 'package:flutter_son_kisimlar/karsilama_sayfasi.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        title: const Text(
          "Giriş Sayfası",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
            ),
            ElevatedButton(
                onPressed: () {
                  _girisYap(context);
                },
                child: const Text(
                  "Giriş Yap",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }


  void _girisYap(BuildContext context){

    _karsilamaSayfasi(context);
  }
  void _karsilamaSayfasi(BuildContext context) {
    MaterialPageRoute sayfaYolu =
        MaterialPageRoute(builder: (BuildContext context) {
      return KarsilamaSayfasi(_controller.text);
    });
    Navigator.push(context, sayfaYolu);
  }
}
