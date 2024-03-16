import 'package:flutter/material.dart';

class UcuncuUygulama extends StatelessWidget {
  final _controller = TextEditingController();

  UcuncuUygulama({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {},
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/resim4.jpg"),
              const SizedBox(height: 20),
              const Text(
                "Kullanıcı Giriş Ekranı",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: _controller,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(25),
                      labelText: "E-Postanızı Giriniz",
                      labelStyle:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      counterText: "15 Karakter uzunluğunda olmalıdır",
                      counterStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.red),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: _controller,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(25),
                      labelText: "Şifrenizi Giriniz",
                      labelStyle:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      counterText:
                          "1 Büyük Harf ve 1 Özel Karakter içermelidir.",
                      counterStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.red),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
              ),
              const SizedBox(height: 28),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: () {},
                child: const Text("Giriş Yap"),

              ),
            ],
          ),
        ));
  }
}
