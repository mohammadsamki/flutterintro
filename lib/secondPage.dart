import 'package:flutter/material.dart';
import 'package:flutter_intro/main.dart';
import 'home.dart';

class SecondPage extends StatelessWidget{
  static const routeName = '/second';

@override
Widget build (BuildContext context){
  // final RouteArg arg = ModalRoute.of(context).settings.arguments;
  //  as : reassigned the value to class type 
    RouteArg? arg = ModalRoute.of(context)!.settings.arguments as RouteArg?;
  print(arg);
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text(arg?.title ?? 'deafult'),
    ),
    body: ElevatedButton(onPressed: () {
      Navigator.pop(context, 
      MaterialPageRoute(builder: (context)=> HomePage())
      );
      
    },
    child: Text('back to home'),
    ),
  );
}
}