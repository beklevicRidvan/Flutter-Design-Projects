import 'package:flutter/material.dart';

class IkinciUygulama extends StatelessWidget {
  const IkinciUygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 5),
                  alignment: Alignment.center,
                  child: const Text(
                    "Ürün Listesi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 70,
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(left: 8),
                    child: Image.network(
                        "https://assets.swappie.com/cdn-cgi/image/width=600,height=600,fit=contain,format=auto/swappie-iphone-14-purple-back.png?v=40"),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 1),
                          child: const Text(
                            "İPHONE 14",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          "İphone 14 512GB White",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          "Fiyat: 35.699 TL",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(left: 8),
                    child: Image.network(
                        "https://cdn.dsmcdn.com/ty707/product/media/images/20230127/14/267691321/842067000/2/2_org_zoom.jpg"),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 1),
                          child: const Text(
                            "Apple Macbook Pro 14",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          "M2 Pro 16GB 512GB SSD",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          "Fiyat: 70.990 TL",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(left: 8),
                    child: Image.network(
                        "https://cdn.dsmcdn.com/ty1013/product/media/images/prod/SPM/PIM/20231010/14/2eb7f3bf-7b0c-3c02-a9b7-fd46b3507706/1_org_zoom.jpg"),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 1),
                          child: const Text(
                            "Xiaomi 13T Pro",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          "512 GB 12GB RAM",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          "Fiyat: 37.695 TL",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(left: 8),
                    child: Image.network(
                        "https://cdn.dsmcdn.com/ty783/product/media/images/20230317/13/306066757/889210968/1/1_org_zoom.jpg"),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.only(right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 1),
                          child: const Text(
                            "Excalibur G870",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          "i7-12650H 32GB 1TBM2 SSD ",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          "Fiyat: 36.799 TL",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
