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
          margin: EdgeInsets.only(top: 15),
          child: Padding(
            padding: EdgeInsets.all(15),
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
                      _devider(),
                      _getSkillCards(),
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
        style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
      ),
    )
  );
}

Widget _getSocialMedia(){
  var allSocialMedia = ['github', 'linkedin', 'whatsapp', 'youtube', 'instagram'];
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
      ),
    )
  );
}

Widget _devider(){
  return(
  Center(
    child: Padding(
      padding: EdgeInsets.all(30),
      child: Divider(
        height: 20,
        thickness: 2.5,
        endIndent: 0,
        color: Colors.black,
      ),
    )
  )
  );
}


Widget _getSkillCards(){
  var skills = ['html', 'css', 'js', 'ReactJs' , 'python', 'django'];
  return(
  Container(
    margin: EdgeInsets.only(top: 5),
    child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for(var each in skills)
            Container(
              margin: EdgeInsets.only(right: 7),
              child: Card(
                elevation: 3,
                child: Column(
                  children: [
                    Image.asset(
                      'images/$each.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: EdgeInsets.all(7),
                      child: Text(
                        '$each',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        )
                    )
                  ],
                ) 
              ),
            )
          ]
        )
      )
    )
  );
}

}