import 'package:flutter/material.dart';

class VucutKitleIndexi extends StatefulWidget {
  const VucutKitleIndexi({super.key});

  @override
  State<VucutKitleIndexi> createState() => VucutIndex();
}

class VucutIndex extends State<VucutKitleIndexi> {
  final _controller = TextEditingController();
  final _controller1 = TextEditingController();

  double _sonuc = 0;
  String _deger = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        toolbarHeight: 100,
        title:const Text(
          "Vucüt Kitle İndeksi Hesaplatıcı",
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
         const Text(
            "Boy Uzunluğunuz (cm)",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.phone,
            controller: _controller,
            decoration: InputDecoration(
              suffixText: "cm",
              hoverColor: Colors.blueGrey,
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              filled: true,
              fillColor: Colors.cyan.shade200,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "Vücut Ağırlığınız (kg)",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.phone,
            controller: _controller1,
            decoration: InputDecoration(
              suffixText: "kg",
              hoverColor: Colors.blueGrey,
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              filled: true,
              fillColor: Colors.cyan.shade200,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: metotUygula,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan.shade200,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Hesapla",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const SizedBox(width: 50),
              Text(
                              _sonuc.toStringAsFixed(2),
                              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20),
                            ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(),
            child: Text(_deger,
                style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 1)),
          )
        ],
      ),
    );
  }

  void metotUygula() {
    setState(() {
      double boyMetre = double.parse(_controller.text) / 100;
      double kilo = double.parse(_controller1.text);
      _sonuc = kilo / (boyMetre * boyMetre);

      if (_sonuc < 18.5) {
        _deger = "İdeal Kilonun Altındasınız";
      } else if (_sonuc >= 18.5 && _sonuc < 24.9) {
        _deger = "İdeal Kilodasınız";
      } else if (_sonuc >= 24.9 && _sonuc < 29.9) {
        _deger = "İdeal Kilonun Üstündesiniz";
      } else if (_sonuc >= 29.9 && _sonuc < 39.9) {
        _deger = "İdeal Kilonun Çok Üstündesiniz (Obez)";
      } else if (_sonuc >= 39.9) {
        _deger = "İdeal Çok Çok Üstündesiniz (Morbid Obez)";
      }
    });
  }
}
