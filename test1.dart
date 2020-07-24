import 'package:flutter/material.dart';

myapp() {
  var mytext = Text('My First App',
      textDirection: TextDirection.ltr, textAlign: TextAlign.center);

  var myicon = Icon(Icons.email, color: Colors.white70);
  var icon = Icon(Icons.camera, color: Colors.red);
  var buttonicon = Icon(
    Icons.chat,
    color: Colors.amberAccent,
  );

  onpress() {
    print("you have clicked------>");
  }

  onpress2() {
    print("you have clicked chat button ---->");
  }

  var button = IconButton(icon: icon, onPressed: onpress);
  var mybutton = IconButton(icon: buttonicon, onPressed: onpress2);

  var appbar = AppBar(
    title: mytext,
    leading: myicon,
    actions: <Widget>[mybutton, button],
  );

  var myapp = Scaffold(
    appBar: appbar,
    backgroundColor: Colors.deepPurple,
    body: Center(
        child: Image.network(
            'https://raw.githubusercontent.com/Onkar179/Flutter__Class/master/Octocat.png')),
  );

  var design = MaterialApp(
    home: myapp,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
