import 'package:flutter/material.dart';


void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
          Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0), // here the desired height getAppBar(),
              child: getAppBar(),
              ),
            body: SafeArea(
              child: getBody()
            ,) 
          ),
    );
  }


  PreferredSizeWidget getAppBar() {
    return(AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      elevation: 5,
      title: Text("Kian Baban", style: TextStyle(fontSize: 35.0))
      )
    );
  }

  Widget getBody(){
    return(
        Container(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Container(
              width: double.infinity,
              child:
                Column(children:[
                  CircleAvatar(
                    backgroundImage: AssetImage('images/face.jpg'),
                    radius: 75,
                    ),
                      _getTtile(),
                      _getSocialMedia(),
                    ]
                ,)
            ,)
          ,)
        )
    );
  }

Widget _getTtile(){
  return(
    Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        "Full-stack Web Developer", 
        style: TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.w600),
      ),
    )
  );
}

Widget _getSocialMedia(){
  var allSocialMedia = ['github', 'linkedin', 'whatsapp', 'youtube'];
  return(
    Container(
      margin: EdgeInsets.only(top: 20),
      child: Wrap(
        children: [
          for (var each in allSocialMedia)
            Image.asset(
              'images/$each.png',
              height: 50,
              width: 75,
              scale: 10,
              fit:BoxFit.contain 
            ),
        ],
      )
,
    )
  );
}

}