import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      setState(() {
                        xOffset = 200;
                        yOffset = 100;
                        scaleFactor = .4;
                      });
                    },
                  ),
                  Column(
                    children: [
                      Text('Location'),
                      Row(children: [
                        Icon(
                          Icons.location_on,
                          color: primaryGreen,
                        ),
                        Text('India')
                      ])
                    ],
                  ),
                  CircleAvatar()
                ]),
          )
        ],
      ),
    );
  }
}
