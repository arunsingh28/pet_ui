import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            Column(
              children: [
                Text('Location'),
                Row(children: [
                  Icon(
                    Icons.location_on,
                    color: primaryGreen,
                  ),
                  Text('Ukrain')
                ])
              ],
            ),
            CircleAvatar()
          ])
        ],
      ),
    );
  }
}
