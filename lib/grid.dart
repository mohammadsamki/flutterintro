import 'package:flutter/material.dart';
import 'fowerList.dart';

class FlowerInfo {
  String name;
  String image;
  int price;
  String description;
  FlowerInfo(this.name, this.image, this.price, this.description);
}

class GridPage extends StatelessWidget {
  final borderRadius = BorderRadius.circular(100); // Image border
  static const routeName = '/flowers';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('grid page')),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(0),
            decoration:
                BoxDecoration(color: Colors.red, borderRadius: borderRadius),

            // color: Colors.teal[100],
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: borderRadius,
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.asset(
                    'assets/images/fl1.jpg',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                print('tapped');
                Navigator.pushNamed(context, FlowerList.routeName,
                    arguments: FlowerInfo('flower 1 ', 'assets/images/fl1.jpg',
                        10, 'this is image discretion'));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: borderRadius,
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.asset(
                    'assets/images/fl2.jpg',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                print('tapped');
                Navigator.pushNamed(context, FlowerList.routeName,
                    arguments: FlowerInfo('flower 1 ', 'assets/images/fl2.jpg',
                        10, 'this is image discretion'));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: borderRadius,
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.asset(
                    'assets/images/fl3.jpg',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                print('tapped');
                Navigator.pushNamed(context, FlowerList.routeName,
                    arguments: FlowerInfo('flower 3 ', 'assets/images/fl3.jpg',
                        10, 'this is image discretion'));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: borderRadius,
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.asset(
                    'assets/images/fl4.jpg',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                print('tapped');
                Navigator.pushNamed(context, FlowerList.routeName,
                    arguments: FlowerInfo('flower 4 ', 'assets/images/fl4.jpg',
                        10, 'this is image discretion'));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: borderRadius,
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.asset(
                    'assets/images/fl5.jpg',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                print('tapped');
                Navigator.pushNamed(context, FlowerList.routeName,
                    arguments: FlowerInfo('flower 5 ', 'assets/images/fl5.jpg',
                        10, 'this is image discretion'));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: borderRadius,
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.asset(
                    'assets/images/fl6.jpg',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                print('tapped');
                Navigator.pushNamed(context, FlowerList.routeName,
                    arguments: FlowerInfo('flower 6 ', 'assets/images/fl4.jpg',
                        10, 'this is image discretion'));
              },
            ),
          ),
        ],
      ),
    ));
  }
}

void main() => runApp(GridPage());
