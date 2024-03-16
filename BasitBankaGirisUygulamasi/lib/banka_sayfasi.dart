import 'package:flutter/material.dart';

class BankaSayfasi extends StatelessWidget {

  String _kullaniciAdi="";
  BankaSayfasi(this._kullaniciAdi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(backgroundColor: Colors.blue.shade900.withOpacity(0.7),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade900.withOpacity(0.7),
              Colors.black.withOpacity(0.6),
              Colors.blue.shade200.withOpacity(0.5)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [

                    Text("Hoşgeldiniz $_kullaniciAdi ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color:Colors.white),)
                  ],
                ),
              ),

              SizedBox(height: 30),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Hesaplarım",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 400,

                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade900.withOpacity(0.7),
                      Colors.black.withOpacity(0.7),
                      Colors.grey.shade200.withOpacity(0.5)],

                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.price_change_rounded,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Text(
                                "Vadesiz TL Hesabı",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Mevcut Bakiye",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Column(
                      children: [
                        Text(""),
                        SizedBox(height: 16),
                        Text(
                          "7500 TL",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Container(
                width: 400,

                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade900.withOpacity(0.7),
                      Colors.black.withOpacity(0.7),
                      Colors.grey.shade200.withOpacity(0.5)],

                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.credit_card,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Text(
                                "Kredi Kartı",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Kullanılabilir Bakiye",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Column(
                      children: [
                        Text(""),
                        SizedBox(height: 16),
                        Text(
                          "11500 TL",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
