import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(PersonList());
}

List<Widget> personList = [];

class PersonList extends StatefulWidget {
  @override
  _PersonListState createState() => _PersonListState();
}

class _PersonListState extends State<PersonList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('this is persons data list view')),
        body: MyList()),
    );
    
  }
}
