import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _welcome = "";

  void _showWelcome(){
    setState(() {
          if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){
                _welcome = _userController.text;
          }
          else{
            _welcome = "Nothing";
          }
        });
  }
  void _erase(){
    setState(() {
          _userController.clear();
          _passwordController.clear();
        });
  }
  @override
  Widget build(BuildContext context) {
    var row = new Row(
                    children: <Widget>[
                      //Login Button
                      new Container(
                        margin: const EdgeInsets.only(
                            left: 40.0), //give space from left
                        child: new RaisedButton(
                          onPressed: _showWelcome,
                          color: Colors.redAccent,
                          child: new Text(
                            'Login',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 20.9),
                          ),
                        ),
                      ),

      
      
      
                      //Clear Button
                      new Container(
                        margin: const EdgeInsets.only(
                            left: 120.0), //give space from left
                        child: new RaisedButton(
                          onPressed: _erase,
                          color: Colors.redAccent,
                          child: new Text(
                            'Clear',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 20.9),
                          ),
                        ),
                      ),
                    ],
                  );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login",style: new TextStyle(fontSize: 30.0)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.grey[400],
     
     
      body: new Container(
        child: new ListView(    //provides scrolling or stack of views
          children: <Widget>[
            //image profile
            Padding(padding: const EdgeInsets.all(8.0),),
     
            new Image.asset(
              'images/face.png',
              //color: Colors.lightBlueAccent,
              width: 210.0,
              height: 180.0,
            ),
     
     
            //form
            Padding(padding: const EdgeInsets.all(11.0),),
            new Container(
              height: 250.0,
              width: 400.0,
              color: Colors.grey[200],
              child: new Column(
                children: <Widget>[
                  //Username
      
      
                  Padding(padding: const EdgeInsets.all(11.0),),
                   new TextField(
                  
                    style: new TextStyle(fontSize: 20.0,color: Colors.black54,fontWeight: FontWeight.w700),
                    controller: _userController,
                    decoration: new InputDecoration(
                                  
                        hintText: 'Username', icon: new Icon(Icons.person),),
                  ),
     
     
                  //Password
                  new TextField(
                    style: new TextStyle(fontSize: 20.0,color: Colors.black54,fontWeight: FontWeight.w700),
                    controller: _passwordController,
                    decoration: new InputDecoration(
                        hintText: 'Password', icon: new Icon(Icons.lock)),
                        obscureText: true,
                  ),

      
      
                  new Padding(
                      padding:
                          new EdgeInsets.all(20.0)), //give space from above
                  new Center(
                      child: row),
                ],
              ),
            ),

      
      
      
            Padding(
              padding: const EdgeInsets.all(17.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Welcome, $_welcome",
                  style: new TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
