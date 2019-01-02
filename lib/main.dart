import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed:(){openDialog();},
              child: Text("Open Alert Dialog"),
            )
          ],
        ),
      ),
    );
  }

  void openDialog(){
    showDialog(
      context:context,
      builder: (context){
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          content: Container(
            //height:300,
            width: MediaQuery.of(context).size.width-40,
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Transform.translate(
                  offset:Offset(0,-30),
                  child:Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Icon(Icons.account_circle,size:60,color:Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Text("Hey This is a dummy text")
                ),
                Container(
                  color: Colors.blue,
                  height:60,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        splashColor: Colors.white,
                        clipBehavior: Clip.antiAlias,
                        shape:RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        color:Colors.blue,
                        onPressed: (){},
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      FlatButton(
                        splashColor: Colors.white,
                        clipBehavior: Clip.antiAlias,
                        shape:RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        color:Colors.blue,
                        onPressed: (){},
                        child: Text(
                          "Exit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  )
                )
              ],
            ),
          ),
        );
      }
    );
  }
}

