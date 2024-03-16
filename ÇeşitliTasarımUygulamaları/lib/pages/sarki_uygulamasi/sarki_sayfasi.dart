import 'package:flutter/material.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.8),

          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "ÇALMA LİSTESİNDEN ÇALINIYOR",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Lady Galadriel",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(
                Icons.more_vert,
                size: 30,
              ),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.green,
              Colors.grey.withOpacity(0.8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,


            children: [

              
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network("https://cdns-images.dzcdn.net/images/cover/cb0ce44e68a08568d837518c7ae7d1e3/500x500.jpg"
                        ,fit: BoxFit.cover,
                          width: 300,

                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 50),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text("Godzilla",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),


                      Text("Eminem",style:TextStyle(fontSize: 20)),
                    ],
                  ),


                  Icon(Icons.check_circle_rounded,size: 40,),
                ],

              ),

              const SizedBox(height: 20),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,


                children: [
                  Icon(Icons.repeat,size: 35,color: Colors.green.shade900,),

                  const Icon(Icons.skip_previous,size: 35,),


                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(Icons.play_arrow,size: 55,color: Colors.white,),
                  ),

                  const Icon(Icons.skip_next,size: 40,),

                  Icon(Icons.cached_rounded,size: 40,color: Colors.green.shade900,),
                ],
              ),


              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.speaker_group,size: 30,),






                  SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        const Icon(Icons.share_outlined,size: 30,),

                        IconButton(onPressed: (){
                          Navigator.pop(context,
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900,
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children:[

                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage("assets/eminem11.png"),
                                      ),
                                    ),
                                  ),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Godzilla""              ",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white
                                      ),),


                                      Text("Eminem",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white
                                      ),),
                                    ],
                                  ),

                                  Icon(
                                    Icons.play_arrow_outlined,

                                    color: Colors.white,
                                    size: 45,

                                  ),

                                  Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                    size: 30,

                                  ),

                                ],



                              ),
                            ),
                          );
                        }, icon: const Icon(Icons.line_weight,size: 30,color: Colors.black,),)
                      ],
                    ),

                  ),
                ],
              ),
            ],

          ),
        ),


    );
  }
}
