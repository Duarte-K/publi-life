// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Feed extends StatefulWidget {
  
  @override
  Feed_State createState() => Feed_State();
}

class Feed_State extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerStories(),
            post(),
          ],
        ),
      ),
    );
  }
}


  post(){
    return Column(
      //Cabeçalho do post
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              //Foto de perfil
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 3,
                    color: Colors.black,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://yt3.ggpht.com/yti/APfAmoGpbw6FLUqKX4x6FOmZ10F6l0QDlMmYw0-hJB5r=s88-c-k-c0x00ffffff-no-rj-mo',
                    width: 45,
                  ),
                ),
              ),
            
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Kauã Duarte',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Cancún, México'),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.more_vert)),

            ],
          ),
        ),
      //Imagem do post
        AspectRatio(
          aspectRatio: 3 / 2,
          child: Image.network(
            'https://image.freepik.com/free-psd/social-media-instagram-post-template_47618-73.jpg',
            //height: 325,
            //width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
      //Rodapé 
        Row(
          children: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.favorite_border)
            ),
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.question_answer)
            ),
          ],
        ),
      ],
    );
  }

  titleBar(){
    return AppBar(
        elevation: 1,
        title: Text("Publi Life", style: GoogleFonts.pacifico(fontSize: 25)),
        centerTitle: true,
        actions: [
          Icon(Icons.send),
        ],
        leading: Icon(Icons.photo_camera),
      );
  }
  
  containerStories(){
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            itemStories(),
            itemStories(),
            itemStories(),
            itemStories(),
            itemStories(),
            itemStories(),
            itemStories(),
            itemStories(),
            itemStories(),
            itemStories(),
          ],
        ),
      ),
    );
  }

  itemStories(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black, width: 4),
            ),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/avatar.png'
                  ),
                ),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white, width: 3),
              ),
            ),           
          ),
          Text("Duarte"),
        ],
      ),
    );
  }