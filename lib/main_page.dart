import 'package:flutter/material.dart';
import 'html.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // here the desired height getAppBar(),
          child: getAppBar(),
          ),
        body: SafeArea(
          child: getBody(context)
        ,) 
      )
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

  Widget getBody(context){
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
                      _getSkillCards(context),
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


Widget _getSkillCards(context){
  var skills = ['html', 'css', 'js', 'ReactJs' , 'python', 'django'];
  return(
  Container(
    margin: EdgeInsets.only(top: 5),
    child:  
    Column(
      children: [
        SingleChildScrollView(
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
                        TextButton(
                          onPressed: (){
                          },
                          child: Text(
                            '$each',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        )
                    ],
                  ) 
                ),
              )
            ]
          )
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0),
          child: 
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
              side: BorderSide(color: Colors.black, width: 2),
                backgroundColor: Colors.blue,
              ),
              onPressed: (){
                navigateToBlogPage(context, Projects());
              },
              child: Text("Projects", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
            ),
        )
      ],
  )
  )
    
  );
}


  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }


} 