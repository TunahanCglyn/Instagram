import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
            width: double.infinity,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8),
                 child: Image.asset("assets/images/logo.png"),
               ),
               Row(
                 children: [
                 
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Icon(
                        Icons.add_circle,
                        color:Colors.black87,
                        size: 20,
                     ),
                   ),
                  
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Icon(
                        Icons.favorite,
                        color:Colors.black87,
                        size: 20,
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 8.0, left: 8, bottom: 8, right: 20),
                     child: Icon(
                        Icons.send,
                        color:Colors.black87,
                        size: 20,
                     ),
                   ),
                 ],
               ),

              ],
            ),
            ),
            Expanded(
            child: Container(
              //width: 50,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          StoryWidget("assets/images/p1.jpg","Keyvan_Arasteh"),
                          StoryWidget("assets/images/p2.jpg","AhmetSelim"),
                          StoryWidget("assets/images/p3.jpg","Ramazan_Sen"),
                          StoryWidget("assets/images/p4.jpeg","Johnny_depp"),
                          StoryWidget("assets/images/p5.webp","Alpacino"),
                          StoryWidget("assets/images/p6.jpeg","Dicaprio"),
                          
                          
                          
                          
                        ],
                      ),
                    ),
                    PostItem("assets/images/p1.jpg","assets/images/post1.jpeg","Keyvan_Arasteh","Boğaz köprüsü"),
                    PostItem("assets/images/p2.jpg","assets/images/post2.jpeg","AhmetSelimOver","15 Temmuz Sehitler Köprüsü"),
                    PostItem("assets/images/p3.jpg","assets/images/post3.jpeg","Ramazan_Sen","Galata"),
                    PostItem("assets/images/p4.jpeg","assets/images/post4.jpeg","Johnny_depp","GalataPort"),
                    PostItem("assets/images/p5.webp","assets/images/post5.jpeg","Alpacino","Sultan Ahmet Camii"),
                    PostItem("assets/images/p6.jpeg","assets/images/post6.jpeg","Dicaprio","Marmara Denizi"),
                  ],
                  ),
              ),
            
            )
            ),
            Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.home, size: 32, color:Colors.black87,),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.search, size: 32, color:Colors.black87,),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.smart_display, size: 32, color:Colors.black87,),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite, size: 32, color:Colors.black87,),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.person, size: 32, color:Colors.black87,),
                ),
              ]
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container PostItem(String avatar, String photo,String name,String location) => Container(
    child: Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        avatar,
                      ),
                      radius: 20,
                    ),
                    SizedBox(width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text(location,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              Icon(Icons.more_horiz)
              ],
            ),
          ),
          Image.asset(photo),
          LikeCommentBox(),
          CommentBox("AhmetSelimOver:","çok iyi olmuş değerli hocam. eline sağlık. Miss benide etiketle"),
          CommentBox("Ramazan_Sen:","Helal be."),
          CommentBox("Tunahanryz:","Çok iyi olmuş hocam :)"),
          ],
        ),
    ),

    );

  Padding LikeCommentBox() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              Icon(Icons.favorite_border,color: Colors.black87),
              SizedBox(width: 8,),
              Icon(Icons.comment_bank_outlined,color: Colors.black87),
              
            ],
          ),
          Icon(Icons.flag_circle_outlined,color: Colors.black87),
          
        ],
        ),
      );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: RichText(
                maxLines: 3,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 12,
                      ),

                    ),
                    TextSpan(text: " "),
                    TextSpan(
                      text: comment,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                  ],),
              ),
            ),
          
        
        ],
        ),
      );
  }

  Widget StoryWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                gradient: LinearGradient(colors: [
                                  Colors.blue,
                                  Colors.red,
                                  Colors.purple,
                                  
                                ]),
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(avatar),
                                  radius: 40,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(name,
                             style: TextStyle(
                              fontSize: 11),
                            ),
                          ],
                        ),
    );
  }
  


}
