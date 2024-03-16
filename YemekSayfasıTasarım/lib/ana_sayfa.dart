import 'package:flutter/material.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    var ekranCozunurlugu = MediaQuery.of(context);
    var ekranYuksekligi = ekranCozunurlugu.size.height;
    var ekranGenisligi = ekranCozunurlugu.size.width;

    Color arkaPlan = Color(0xFFE0F2F1);
    Color anaRenk = Color(0xFF00695C);
    Color yanRenk = Color(0xFFFFAB40);
    return Scaffold(
      backgroundColor: arkaPlan,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: ekranYuksekligi / 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(ekranYuksekligi / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Let's eat\nQuality food",
                      style: TextStyle(
                          color: anaRenk,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    ClipOval(
                        child: Image.network(
                      "https://steamuserimages-a.akamaihd.net/ugc/94975006425740573/93D5134334CE832BBACC5C56AD2128CDDD057ECD/?imw=512&imh=512&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true",
                      width: 80,
                      fit: BoxFit.cover,
                    ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(ekranYuksekligi / 40),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: anaRenk),
                                  borderRadius: BorderRadius.circular(25)),
                              prefixIcon: Icon(
                                Icons.search,
                                color: anaRenk,
                                size: 35,
                              ),
                              contentPadding: EdgeInsets.all(15),
                              hintText: "Search Food..."),
                        )),
                    Expanded(
                        child: CircleAvatar(
                      radius: 25,
                      backgroundColor: yanRenk,
                      child: Icon(
                        Icons.format_line_spacing,
                        color: anaRenk,
                        size: 30,
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(ekranYuksekligi / 40),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: yanRenk,
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                          onPressed: () {},
                          child: Text(
                            "Fast Food",
                            style: TextStyle(color: anaRenk, fontSize: 18),
                          )),
                      SizedBox(width: 15),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                          onPressed: () {},
                          child: Text(
                            "Drink",
                            style: TextStyle(color: anaRenk, fontSize: 18),
                          )),
                      SizedBox(width: 15),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                          onPressed: () {},
                          child: Text(
                            "Home,Life",
                            style: TextStyle(color: anaRenk, fontSize: 18),
                          )),
                      SizedBox(width: 25),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                          onPressed: () {},
                          child: Text(
                            "Breakfast",
                            style: TextStyle(color: anaRenk, fontSize: 18),
                          )),
                      SizedBox(width: 15),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                          onPressed: () {},
                          child: Text(
                            "Food",
                            style: TextStyle(color: anaRenk, fontSize: 18),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      child: Container(
                        padding: const EdgeInsets.all(14.0),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(35),
                                            topRight: Radius.circular(35)),
                                        child: Image.network(
                                            "https://i.ytimg.com/vi/xULtN7cZqe0/hqdefault.jpg",
                                            width: ekranYuksekligi / 5.5)),
                                  ),
                                  Positioned(
                                      top: 70,
                                      left: 100,
                                      child: Container(
                                        color: yanRenk,
                                        child: Icon(
                                          Icons.favorite_outline,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Text(
                              "Grilled Fish",
                              style: TextStyle(
                                  color: anaRenk,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "Smoked",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$ 8.50",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(35),
                                    topRight: Radius.circular(35)),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add To Cart",
                                      style: TextStyle(color: anaRenk),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: yanRenk,
                                        shape: LinearBorder(),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20)))),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      child: Container(
                        padding: const EdgeInsets.all(14.0),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(35),
                                            topRight: Radius.circular(35)),
                                        child: Image.network(
                                            "https://i.ytimg.com/vi/xULtN7cZqe0/hqdefault.jpg",
                                            width: ekranYuksekligi / 5.5)),
                                  ),
                                  Positioned(
                                      top: 70,
                                      left: 100,
                                      child: Container(
                                        color: yanRenk,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 40,


                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Text(
                              "Grilled Fish",
                              style: TextStyle(
                                  color: anaRenk,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "Smoked",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$ 8.50",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(35),
                                    topRight: Radius.circular(35)),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add To Cart",
                                      style: TextStyle(color: anaRenk),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: yanRenk,
                                        shape: LinearBorder(),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20)))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      child: Container(
                        padding: const EdgeInsets.all(14.0),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(35),
                                            topRight: Radius.circular(35)),
                                        child: Image.network(
                                            "https://i.ytimg.com/vi/xULtN7cZqe0/hqdefault.jpg",
                                            width: ekranYuksekligi / 5.5)),
                                  ),
                                  Positioned(
                                      top: 70,
                                      left: 100,
                                      child: Container(
                                        color: yanRenk,
                                        child: Icon(
                                          Icons.favorite_outline,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Text(
                              "Grilled Fish",
                              style: TextStyle(
                                  color: anaRenk,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "Smoked",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$ 8.50",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(35),
                                    topRight: Radius.circular(35)),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add To Cart",
                                      style: TextStyle(color: anaRenk),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: yanRenk,
                                        shape: LinearBorder(),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20)))),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      child: Container(
                        padding: const EdgeInsets.all(14.0),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(35),
                                            topRight: Radius.circular(35)),
                                        child: Image.network(
                                            "https://i.ytimg.com/vi/xULtN7cZqe0/hqdefault.jpg",
                                            width: ekranYuksekligi / 5.5)),
                                  ),
                                  Positioned(
                                      top: 70,
                                      left: 100,
                                      child: Container(
                                        color: yanRenk,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 40,


                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Text(
                              "Grilled Fish",
                              style: TextStyle(
                                  color: anaRenk,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "Smoked",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$ 8.50",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(35),
                                    topRight: Radius.circular(35)),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add To Cart",
                                      style: TextStyle(color: anaRenk),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: yanRenk,
                                        shape: LinearBorder(),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20)))),
                          ],
                        ),
                      ),
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
