import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  // 1
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 25, top: 450, right: 25),
          child: RaisedButton(
            child: const Text(
              'Donations',
              style: TextStyle(fontSize: 30.0),
            ),
            color: Color.fromARGB(255, 244, 152, 54),
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, "/secondscreen");
            },
          ),
        ),
      ]),
    );
  }
}
