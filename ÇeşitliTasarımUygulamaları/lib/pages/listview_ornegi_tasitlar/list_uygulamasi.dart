import 'package:flutter/material.dart';
import 'package:uygulama_orneklerim1/models/tasitlar.dart';

class ListViewOrnek extends StatelessWidget {
  final List<Tasitlar> _tasitListesi = <Tasitlar>[
    Tasitlar(
        "Güçlü motoru ve aerodinamik tasarımıyla XYZ Marka'nın son model arabası, sürücülerin gönlünü fethediyor. 400 beygir gücündeki motoru, anında hızlanma ve üst düzey performans sunarken, yakıt verimliliği de dikkat çekici. Otomatik şanzımanı sayesinde sürücüler, şehir içi trafiğinde rahat bir kullanım deneyimi yaşayabilirler.",
        1886),
    Tasitlar(
        "Hızlı ve güvenilir bir ulaşım aracı olarak trenler, modern taşımacılığın vazgeçilmez bir parçası haline gelmiştir. Gelişmiş ray sistemleri, aerodinamik tasarımlar ve yüksek hızlı tren teknolojileriyle donatılmış trenler, uzun mesafeleri kısa sürede kat etme yeteneği ile bilinir.",
        1825),
    Tasitlar(
        "Bisiklet, insan gücüyle çalışan, çevre dostu bir ulaşım aracıdır. Pedal çevrildiğinde dönen tekerlekler, bisikletin ileri gitmesini sağlar. Hafif ve taşınabilir olması, şehir içi ulaşımda ve egzersiz yapmada popüler bir seçenek haline getirir.",
        1860),
    Tasitlar(
        "Tekneler, su üzerinde hareket etmek için tasarlanmış deniz araçlarıdır. Tarih boyunca çeşitli kültürlerde farklı amaçlarla kullanılan tekneler, günümüzde de balıkçılık, taşımacılık, rekreasyon, spor ve turizm gibi birçok alanda kullanılmaktadır.",
        1812),
    Tasitlar(
        "Tramvaylar, şehir içi ulaşımda yaygın olarak kullanılan raylı taşıma araçlarıdır. İlk tramvay hatları, atlı tramvaylar olarak bilinen ve atlar tarafından çekilen araçlardan oluşuyordu. İlk atlı tramvay hattı, 1832'de New York'ta hizmete girdi. Ancak, bu sistem pek pratik değildi ve atlı tramvaylar yerini zamanla buharlı ve ardından elektrikli tramvaylara bıraktı.",
        1832),
    Tasitlar(
        "Uçaklar, hava taşımacılığında kullanılan ve genellikle motorlu, kanatlı bir tasarıma sahip olan hava araçlarıdır. İlk uçak, Wright Kardeşler (Orville ve Wilbur Wright) tarafından tasarlanıp üretilen Wright Flyer I adlı uçaktır. Wright Flyer I, 17 Aralık 1903 tarihinde Kuzey Karolina, ABD'de gerçekleştirilen bir test uçuşunda tarihi bir başarı elde ederek dünyada ilk kontrollü motorlu uçuşu gerçekleştirdi.",
        1903),
    Tasitlar(
        "Zeplinler, hafif gaz ile doldurulmuş büyük hava gemileridir ve genellikle uzun bir gövdeye ve içindeki gazı tutan bir dış zarfa sahiptir. İlk zeplin, Alman mühendis Ferdinand von Zeppelin tarafından tasarlanan ve 2 Temmuz 1900 tarihinde ilk uçuşunu gerçekleştiren LZ 1 (Luftschiff Zeppelin 1) idi.",
        1900)
  ];

  ListViewOrnek({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "ListView Listesi",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: _listeOgesiniOlustur,
        itemCount: _tasitListesi.length,
      ),
    );
  }

  Widget _listeOgesiniOlustur(BuildContext context, int index) {
    return Card(
      child: ListTile(
        title: Text(_tasitListesi[index].title),
        subtitle: Text(_tasitListesi[index].tasitBilgisi),
        leading: const Icon(Icons.card_membership_outlined),
      ),
    );
  }
}
