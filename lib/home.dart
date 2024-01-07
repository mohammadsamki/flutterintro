import 'package:flutter/material.dart';
import 'package:flutter_intro/main.dart';

import 'secondPage.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  static const routeName = '/';
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    UserInput? _input =
        ModalRoute.of(context)!.settings.arguments as UserInput?;
    // print('this is email ${_input?.email}, and pass ${_input?.password}');
    String? email;
    String? password;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Home'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, SecondPage.routeName,
                    arguments: RouteArg('Second Page', 'hi'));
              },
              child: Text('go to sec page '),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('go to login page '),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: PageView(children: [
        Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (newValue) {
                    print(newValue);
                    email = newValue;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'empty field ';
                    }
                    bool check = false;
                    for (var i = 0; i < value!.length; i++) {
                      if (value[i] == '@') {
                        check = true;
                      }
                    }
                    if (check == false) {
                      return 'email is not good check if you have @ ';
                    }
                  },
                  decoration: InputDecoration(label: Text('enter your Email')),
                ),
                TextFormField(
                  onSaved: (newValue) {
                    password = newValue;
                    print(newValue);
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'cant be null';
                    } else if (value.length < 8) {
                      return 'enter at least 8 catchers';
                    }
                  },
                  decoration: InputDecoration(label: Text('Password')),
                ),

                // FormField(builder:(FormFieldState) {
                //   return Checkbox(value: _activeOrNot, onChanged: (val)=>{
                //     setState(() {
                //       _activeOrNot =val;
                //     },)
                //   });
                // }),
                // add a button to submit the form
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  // onPressed: (){
                  //   if(_key.currentState!.validate()){
                  //     _key.currentState!.save();
                  //     print('form saved');

                  //   }
                  // },
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      _key.currentState!.save();

                      if (email == _input?.email &&
                          password == _input?.password) {
                        print(' user logged in sucsusfuly');
                      } else {
                        print('email or pass is not match');
                      }
                    }
                  },
                  child: Text('submit'),
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  child: Text('hi iam new text'),
                  onLongPress: () {
                    print('you double tapped');
                  },
                  onTap: () {
                    print('you tapped');
                  },
                  onDoubleTap: () {
                    print('you double tapped');
                  },
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  child: Text('hi iam new text'),
                  onLongPress: () {
                    print('you double tapped');
                  },
                  onTap: () {
                    print('you tapped');
                  },
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  child: Text('hi iam new text'),
                  onLongPress: () {
                    print('you double tapped');
                  },
                  onTap: () {
                    print('you tapped');
                  },
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  child: Text('hi iam new text'),
                  onLongPress: () {
                    print('you double tapped');
                  },
                  onTap: () {
                    print('you tapped');
                  },
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  child: Text('hi iam new text'),
                  onLongPress: () {
                    print('you double tapped');
                  },
                  onTap: () {
                    print('you tapped');
                  },
                ),
              ],
            )),
      ]),
    );
  }
}
