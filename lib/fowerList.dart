import 'package:flutter/material.dart';

import 'grid.dart';

class FlowerList extends StatefulWidget {
  static const routeName = '/flowers/deatels';

  @override
  _FlowerListState createState() => _FlowerListState();
}

class _FlowerListState extends State<FlowerList> {
  
  FlowerInfo? deatels;
 

  @override
  Widget build(BuildContext context) {
    deatels = ModalRoute.of(context)!.settings.arguments as FlowerInfo?;
    return Scaffold(
        appBar: AppBar(
          title: Text(deatels!.name),
        ),
        body: Container(
          child: Column(children: [
            Image.asset(deatels!.image),
            Text(deatels!.name),
            Text('${deatels!.price}'),
            Text(deatels!.description),
          ]),
        ));
  }
}
