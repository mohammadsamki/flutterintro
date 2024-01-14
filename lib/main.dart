import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'home.dart';
import 'secondPage.dart';
import 'fowerList.dart';
import 'grid.dart';
import 'scroll.dart';
// class MyApp extends StatefulWidget{
//   @override  // Override call a method inside the parent class
//   // and override (overwrite)
//   _ChangableWidget createState() => _ChangableWidget(); // change a tate of a widget
// }
// class _ChangableWidget extends State<MyApp>{

//   @override
//   Widget build(BuildContext context){
//     return Container();
//   }
// }
// class FirstStatlessWedget extends StatelessWidget{
//   double _value=30;
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold (appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: Icon(Icons.thumb_down),
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         color: Colors.amber,

//         // child: Image.asset('assets/images/tests.avif',fit: BoxFit.cover),
//         child: Slider(
//           min: 0,
//           max: 100,
//           value: _value,
//           onChanged: (double value )=> _value=value)
//         // TextField(
//         //   obscureText: false,
//         //   inputFormatters: [
//         //     LengthLimitingTextInputFormatter(10),
//         //   ],
//         //   keyboardType: TextInputType.number,
//         //   decoration: InputDecoration(
//         //     labelText: 'phone',
//         //     hintText: 'phone',
//         //     icon: Icon(Icons.phone)
//         //   ),
//         // ),
//         // child: Checkbox(
//         //   value: false,
//         //   onChanged: (value){
//         //     print(value);
//         //   },
//         // ),

//   ),
//   floatingActionButton: FloatingActionButton.large(

//     child: Icon(
//       Icons.thumb_up,
//       color: Colors.green,
//       size: 50,
//       ),
//     onPressed: ()=>{print('hi')},
//     backgroundColor: Colors.red,

//   ),
//   )
//     );
//   }
// }

// void main() {
//   runApp(FirstStatlessWedget());
// }

void main() {
  runApp(MyApp());
}

class RouteArg {
  final String? title;
  final String? message;

  RouteArg(String? this.title, String? this.message);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/scroll',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
        '/flowers/deatels': (context) => FlowerList(),
        '/register': (context) => MySlider(),
        '/flowers': (context) => GridPage(),
        '/scroll': (context) => CollapsingList(),
      },
    );
  }
}

class UserInput {
  String? email;
  String? password;

  UserInput(String? this.email, String? this.password);
}

class MySlider extends StatefulWidget {
  @override
  _MySlider createState() => _MySlider();
}

class _MySlider extends State<MySlider> {
  double _value = 30; // initial value   //
  bool? _activeOrNot = false;
  bool? _activeOrNot2 = false;
  String? _checkPass;
  bool haveUpper = false;
  bool haveLower = false;
  bool haveNumber = false;
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  final GlobalKey<FormState> _key = GlobalKey();

  String? _isActive = 'choice 3';

  List CheckChoicese = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('this is slider scafold'),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            //   Text('value is $_value'),
            //   SizedBox(height: 60,),
            //   Text('hi'),
            //   Slider(
            //     min:0,
            //     max:100,
            //     value: _value,
            //     onChanged: (value){
            //       setState(() {
            //         _value =value;
            //       });
            //     }),
            //     Container(
            //       margin: EdgeInsets.only(top: 100),
            //       padding: EdgeInsets.only(left: 50),
            //       child: Row(

            //       children: [

            //     SizedBox(width: 50,),
            //       Checkbox(value: _activeOrNot,
            //     onChanged: (value){
            //       setState(() {
            //       _activeOrNot=value;
            //       if (value == true){
            //         CheckChoicese.add('check 1');
            //       }
            //       if(value == false){
            //         CheckChoicese.remove('check 1');
            //       }

            //       });
            //     }),

            //     Text('check 1'),
            //     SizedBox(width: 50,),
            //       Checkbox(value: _activeOrNot2,
            //     onChanged: (value){
            //       setState(() {
            //       _activeOrNot2=value;
            //        if (value == true){
            //         CheckChoicese.add('check2');
            //       }
            //       if(value == false){
            //         CheckChoicese.remove('check2');
            //       }

            //       });
            //     }),

            //     Text('check2'),
            //     ],) ,),
            //     SizedBox(height: 60,),
            //     Row(children: [
            //       Radio(groupValue: _isActive,value: 'choice 1',
            //     onChanged: ( value) {
            //       setState(() {
            //         _isActive=value;

            //         print(value);
            //       });
            //     },),
            //     Text('choice 1'),
            //     ],),
            //     Row(children: [
            //       Radio(groupValue: _isActive,value: 'choice 2',
            //     onChanged: ( value) {
            //       setState(() {
            //         _isActive=value;

            //         print(value);
            //       });
            //     },),
            //     Text('choice 2'),
            //     ],),
            //     Row(children: [
            //       Radio(groupValue: _isActive,value: 'choice 3',
            //     onChanged: ( value) {
            //       setState(() {
            //         _isActive=value;

            //         print(value);
            //       });
            //     },),
            //     Text('choice 3'),
            //     ],
            // ),
            //  FloatingActionButton.large(
            //   child: Text('enter'),
            //   onPressed: (){
            //     print('this is the value from radio:  $_isActive');
            //     print('this is the values from ChaeckBox:  $CheckChoicese');
            //   }
            //  ),
            Container(
              child: Form(
                  key: _key,
                  child: ListView(children: [
                    Column(
                      children: [
                        TextFormField(
                          onSaved: (value) {
                            firstName = value!;
                            print(value);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'empty field ';
                            }
                          },
                          decoration: InputDecoration(
                              label: Text('enter your First name')),
                        ),
                        TextFormField(
                          onSaved: (newValue) {
                            lastName = newValue!;
                            print(newValue);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'empty field ';
                            }
                          },
                          decoration: InputDecoration(
                              label: Text('enter your Last Name')),
                        ),
                        TextFormField(
                          onSaved: (newValue) {
                            email = newValue!;
                            print(newValue);
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
                          decoration:
                              InputDecoration(label: Text('enter your Email')),
                        ),
                        TextFormField(
                          onSaved: (newValue) {
                            print(newValue);
                            password = newValue!;
                            _checkPass = newValue;
                          },
                          validator: (value) {
                            _checkPass = value;

                            String? lowerChar = 'abcdefghijklmnopqrstuvwxyz';
                            String? upperChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                            String? numberChar = '0123456789';

                            if (value!.length >= 8) {
                              for (var i = 0; i < value!.length; i++) {
                                for (var j = 0; j < lowerChar!.length; j++) {
                                  if (value[i] == lowerChar[j]) {
                                    haveLower = true;
                                  }
                                }
                                for (var k = 0; k < upperChar.length; k++) {
                                  if (value[i] == upperChar[k]) {
                                    haveUpper = true;
                                  }
                                }
                                for (var m = 0; m < numberChar.length; m++) {
                                  if (value[i] == numberChar[m]) {
                                    haveNumber = true;
                                  }
                                }
                              }
                              print('haveUpper ${haveUpper}');
                              print("haveNumber ${haveNumber}");
                              print('haveLower ${haveLower}');
                              print(haveNumber && haveLower && haveUpper);

                              //  3 val true > condition false
                              if (haveNumber == false ||
                                  haveLower == false ||
                                  haveUpper == false) {
                                return 'you miss upper ,lower or numb';
                              }
                            } else {
                              return 'the pass is less than 8 characters';
                            }

                            if (value == null || value.isEmpty) {
                              return 'empty field ';
                            }
                            haveNumber = false;
                            haveLower = false;
                            haveUpper = false;
                          },
                          decoration: InputDecoration(label: Text('Password')),
                        ),
                        TextFormField(
                          onSaved: (newValue) {
                            print(newValue);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'empty field ';
                            }
                            print('value: $value');
                            print('check: $_checkPass');
                            if (value != _checkPass) {
                              return 'Password not matched';
                            }
                          },
                          decoration:
                              InputDecoration(label: Text('Conferm Password')),
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
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('save user'),
                                  content: Container(
                                    height: 200,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('save the USER data '),
                                        Text('firstName: $firstName '),
                                        Text('lastName: $lastName '),
                                        Text('email: $email '),
                                        Text('password: $password'),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () => {
                                        Navigator.popAndPushNamed(
                                            context, HomePage.routeName,
                                            arguments:
                                                UserInput(email, password)),
                                        _key.currentState!.reset()
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          child: Text('submit'),
                        ),
                      ],
                    ),
                  ])),
            )
          ]),
        ));
  }
}

// homework : create a form for register a user that contain this fields:
//  1- First name, 2- Last name, 3- email, 4- password, 5- confirm password, 6- gender,
// 7-phone number, 8- birthday,

//  new task fix the issue of the pass validor , tell the user just the missing valid
//  user the alert wid
