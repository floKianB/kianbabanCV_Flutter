import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: 
          Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0), // here the desired height getAppBar(),
              child: getAppBar(),
              ),
            body: getBody(),
          ),
        ) 
    );
  }


  PreferredSizeWidget getAppBar() {
    return(AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      elevation: 20,
      title: Text("Kian Baban", style: TextStyle(fontSize: 35.0))
      )
    );
  }

  Widget getBody(){
    return(
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
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
                  ]
                ,)
          ,)
,
          )
        )
    );
  }

}