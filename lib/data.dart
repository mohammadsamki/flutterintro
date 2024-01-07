import 'package:flutter/material.dart';

class Person {
  String name;
  String email;
  Person(this.name, this.email);
}

class MyList extends StatelessWidget {
  List<Person> persons = [
    Person('ali', 'ali@gmail.com'),
    Person('sam', 'ali@gmail.com'),
    Person('lio', 'ali@gmail.com'),
    Person('ziad', 'ali@gmail.com'),
    Person('loai', 'ali@gmail.com'),
    Person('kamal', 'ali@gmail.com'),
    Person('nizar', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
    Person('sami', 'ali@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Text(persons[index].name);
    },
    itemCount: persons.length,);
  }
//  map shorcut for
//  List<Person> personFun = persons.map((e) => Person(e.name, e.email)).toList();
}

// void main() {
//   for (var i = 0; i < personDate.length; i++) {
//     print(personDate[i]);
//   }
// }
