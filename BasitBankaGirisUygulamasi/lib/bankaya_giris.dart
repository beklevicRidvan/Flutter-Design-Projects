import 'package:flutter/material.dart';
import 'package:flutter_son_kisimlar/banka_sayfasi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BankaGiris extends StatefulWidget {

  @override
  State<BankaGiris> createState() => _BankaGirisState();
}

class _BankaGirisState extends State<BankaGiris> {



  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

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
          padding: const EdgeInsets.all(20.0),
          child: Column(

            children: [

              Container(

                child:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(
                        Icons.manage_accounts,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.attach_money_sharp,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text(
                          "RıdvanBank",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    ),
                    Container(
                      child: Icon(
                        Icons.notifications_none,
                        size: 40,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 150),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              controller: _controller1,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.1),
                                border: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(10),

                                ),
                                prefixIcon: Icon(Icons.person_outline_sharp,size: 25,color: Colors.white,),
                                contentPadding: EdgeInsets.all(8),
                                hintText: "TCNO veya MusteriNO giriniz",
                                hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                      )
                  ),
                ],
              ),

              SizedBox(height: 10),


              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            controller: _controller2,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.1),
                              border: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(10),

                              ),
                              suffixIcon: Icon(Icons.remove_red_eye,size: 25,color: Colors.white,),
                              contentPadding: EdgeInsets.all(8),
                              hintText: "Şifrenizi giriniz",
                              hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),


              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [

                      Container(
                        child: ElevatedButton(
                          onPressed: (){
                            _girisYap(context);
                          }

                              ,
                          style:  ElevatedButton.styleFrom(
                            backgroundColor:Colors.blue.shade900.withOpacity(0.1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),

                          ),
                          child: Text("Giriş Yap",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  void _girisKontrolu(BuildContext context){

  }


  void _girisYap(BuildContext context) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString("tcNo", _controller1.text);
    await prefs.setString("sifre", _controller2.text);

    _sayfaAc(context, BankaSayfasi(_controller1.text));


  }

  void _sayfaAc(BuildContext context,Widget widget){
    MaterialPageRoute _sayfaYolu = MaterialPageRoute(builder: (BuildContext context)
    {
      return widget;
    });
    Navigator.push(context, _sayfaYolu);
  }


}
