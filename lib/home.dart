import 'package:flutter/material.dart';
import 'package:flutter_intro/main.dart';

import 'secondPage.dart';
void main (){
runApp(MaterialApp(
  home: HomePage(),
));
}

class HomePage extends StatelessWidget{
  static const routeName = '/';
@override
Widget build (BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Row(children: [
        Text('Home'),
        ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, 
            SecondPage.routeName,
            arguments: RouteArg('Second Page', 'hi'));

      
    },
    child: Text('go to sec page '),
    ),
    ElevatedButton(onPressed: () {
      Navigator.pushNamed(context, '/register');
      
    },
    child: Text('go to login page '),
    ),

      ],
      ),
      
      backgroundColor: Colors.blue,
    ),
    body: ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/register');

      
    },
    child: Text('go to sec page '),
    ),
  );
}
}