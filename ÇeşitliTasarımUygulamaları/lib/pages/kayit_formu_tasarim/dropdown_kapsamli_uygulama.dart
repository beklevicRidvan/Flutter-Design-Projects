import 'package:flutter/material.dart';

class DropDownUygulama extends StatefulWidget {
  const DropDownUygulama({super.key});

  @override
  State<DropDownUygulama> createState() => DropDownUygulamaState();
}

class DropDownUygulamaState extends State<DropDownUygulama> {
  List<String> sehirListesi = <String>[
    "Adana",
    "Adıyaman",
    "Afyonkarahisar",
    "Ağrı",
    "Amasya",
    "Ankara",
    "Antalya",
    "Artvin",
    "Aydın",
    "Balıkesir",
    "Bilecik",
    "Bingöl",
    "Bitlis",
    "Bolu",
    "Burdur",
    "Bursa",
    "Çanakkale",
    "Çankırı",
    "Çorum",
    "Denizli",
    "Diyarbakır",
    "Edirne",
    "Elazığ",
    "Erzincan",
    "Erzurum",
    "Eskişehir",
    "Gaziantep",
    "Giresun",
    "Gümüşhane",
    "Hakkâri",
    "Hatay",
    "Isparta",
    "Mersin",
    "İstanbul",
    "İzmir",
    "Kahramanmaraş",
    "Karabük",
    "Karaman",
    "Kars",
    "Kastamonu",
    "Kayseri",
    "Kırıkkale",
    "Kırklareli",
    "Kırşehir",
    "Kocaeli",
    "Konya",
    "Kütahya",
    "Malatya",
    "Manisa",
    "Mardin",
    "Mersin",
    "Muğla",
    "Muş",
    "Nevşehir",
    "Niğde",
    "Ordu",
    "Osmaniye",
    "Rize",
    "Sakarya",
    "Samsun",
    "Siirt",
    "Sinop",
    "Sivas",
    "Şanlıurfa",
    "Şırnak",
    "Tekirdağ",
    "Tokat",
    "Trabzon",
    "Tunceli",
    "Uşak",
    "Van",
    "Yalova",
    "Yozgat",
    "Zonguldak"
  ];

  final List<String> _cinsiyetListesi = <String>["Erkek", "Kadın"];
  final List<String> _telefonListesi = <String>["Mobile", "Home", "Work"];

  final List<String> _ayListesi = <String>[
    "Ocak",
    "Şubat",
    "Mart",
    "Nisan",
    "Mayıs",
    "Haziran",
    "Temmuz",
    "Ağustos",
    "Eylül",
    "Ekim",
    "Kasım",
    "Aralık"
  ];

  final List<String> _gunListesi = <String>[
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31"
  ];

  final List<String> _yilListesi = <String>[
    "1930",
    "1931",
    "1932",
    "1933",
    "1934",
    "1935",
    "1936",
    "1937",
    "1938",
    "1939",
    "1940",
    "1941",
    "1942",
    "1943",
    "1944",
    "1945",
    "1946",
    "1947",
    "1948",
    "1949",
    "1950",
    "1951",
    "1952",
    "1953",
    "1954",
    "1955",
    "1956",
    "1957",
    "1958",
    "1959",
    "1960",
    "1961",
    "1962",
    "1963",
    "1964",
    "1965",
    "1966",
    "1967",
    "1968",
    "1969",
    "1970",
    "1971",
    "1972",
    "1973",
    "1974",
    "1975",
    "1976",
    "1977",
    "1978",
    "1979",
    "1980",
    "1981",
    "1982",
    "1983",
    "1984",
    "1985",
    "1986",
    "1987",
    "1988",
    "1989",
    "1990",
    "1991",
    "1992",
    "1993",
    "1994",
    "1995",
    "1996",
    "1997",
    "1998",
    "1999",
    "2000",
    "2001",
    "2002",
    "2003",
    "2004",
    "2005",
    "2006",
    "2007",
    "2008",
    "2009",
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
    "2023"
  ];

  String _secilenCinsiyet = "Erkek";
  String _secilenYil = "2023";
  String _secilenAy = "Ocak";
  String _secilenGun = "1";
  String _secilenSehir = "Adana";
  String _secilenTelefon = "Mobile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Uygulaması"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Ad",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 5,
                  child: TextField(
                    keyboardType: TextInputType.text,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Soyad",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 5,
                  child: TextField(
                    keyboardType: TextInputType.text,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Email",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 5,
                  child: TextField(
                    keyboardType: TextInputType.text,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "R-Email",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 8,
                  child: TextField(
                    keyboardType: TextInputType.text,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Şifre",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                        counterText: "Şifre Minimum 8 Karakter Olmalıdır",
                        counterStyle: TextStyle(
                          color: Colors.red.shade300,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "R-Şifre",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                const Expanded(
                  flex: 8,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Adres",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 5,
                  child: TextField(
                    keyboardType: TextInputType.text,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Şehir",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 5,
                  child: DropdownButton<String>(
                    value: _secilenSehir,
                    items: sehirListesi.map((String sehir) {
                      return DropdownMenuItem(
                        value: sehir,
                        child: Text(
                          sehir,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      );
                    }).toList(),
                    onChanged: _sehirDegistir,
                    isExpanded: true,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Zip Code",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: Colors.amber,
                      suffixIcon: const Icon(Icons.location_city),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 2,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: Colors.amber,
                        hintText: "Optional",
                        hintStyle: const TextStyle()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Telefon",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: Colors.amber,
                        suffixIcon: const Icon(Icons.phone_iphone_outlined)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButton<String>(
                    value: _secilenTelefon,
                    items: _telefonListesi.map((String telefon) {
                      return DropdownMenuItem(
                          value: telefon, child: Text(telefon));
                    }).toList(),
                    onChanged: _telefonDegistir,
                    isExpanded: true,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Doğum Tarihi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 1,
                  child: DropdownButton<String>(
                    value: _secilenGun,
                    items: _gunListesi.map((String gun) {
                      return DropdownMenuItem(
                        value: gun,
                        child: Text(
                          gun,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      );
                    }).toList(),
                    onChanged: _gunDegistir,
                    isExpanded: true,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 2,
                  child: DropdownButton<String>(
                    value: _secilenAy,
                    items: _ayListesi.map((String ay) {
                      return DropdownMenuItem(
                        value: ay,
                        child: Text(
                          ay,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      );
                    }).toList(),
                    onChanged: _ayDegistir,
                    isExpanded: true,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 2,
                  child: DropdownButton<String>(
                    value: _secilenYil,
                    items: _yilListesi.map((String yil) {
                      return DropdownMenuItem(
                        value: yil,
                        child: Text(
                          yil,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      );
                    }).toList(),
                    onChanged: _yilDegistir,
                    isExpanded: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Cinsiyet",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 5,
                  child: DropdownButton<String>(
                    value: _secilenCinsiyet,
                    items: _cinsiyetListesi.map((String cinsiyet) {
                      return DropdownMenuItem(
                        value: cinsiyet,
                        child: Text(
                          cinsiyet,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      );
                    }).toList(),
                    onChanged: _cinsiyetDegistir,
                    isExpanded: true,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _sehirDegistir(String? yeniSecilenSehir) {
    if (yeniSecilenSehir != null) {
      setState(() {
        _secilenSehir = yeniSecilenSehir;
      });
    }
  }

  void _telefonDegistir(String? yeniSecilenTelefon) {
    if (yeniSecilenTelefon != null) {
      setState(() {
        _secilenTelefon = yeniSecilenTelefon;
      });
    }
  }

  void _ayDegistir(String? yeniSecilenAy) {
    if (yeniSecilenAy != null) {
      setState(() {
        _secilenAy = yeniSecilenAy;
      });
    }
  }

  void _gunDegistir(String? yeniSecilenGun) {
    if (yeniSecilenGun != null) {
      setState(() {
        _secilenGun = yeniSecilenGun;
      });
    }
  }

  void _yilDegistir(String? yeniSecilenYil) {
    if (yeniSecilenYil != null) {
      setState(() {
        _secilenYil = yeniSecilenYil;
      });
    }
  }

  void _cinsiyetDegistir(String? yeniSecilenCinsiyet) {
    if (yeniSecilenCinsiyet != null) {
      setState(() {
        _secilenCinsiyet = yeniSecilenCinsiyet;
      });
    }
  }
}
