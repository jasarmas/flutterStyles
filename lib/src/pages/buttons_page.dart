import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _title(),
                _roundedButtons(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.pink,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.bubble_chart),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.supervised_user_circle),
          ),
        ],
      ),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
          begin: FractionalOffset(0.0, 0.5),
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: [
        gradient,
        Positioned(
          top: -120,
          child: pinkBox,
        ),
      ],
    );
  }

  Widget _title() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Classify Transaction",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Classify this transaction into a particular category",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(
          children: [
            _createRoundedButton(Colors.blue, Icons.border_all, "General"),
            _createRoundedButton(
                Colors.purpleAccent, Icons.directions, "Directions"),
          ],
        ),
        TableRow(
          children: [
            _createRoundedButton(Colors.pinkAccent, Icons.shop, "Buy"),
            _createRoundedButton(
                Colors.orange, Icons.insert_drive_file, "File"),
          ],
        ),
        TableRow(
          children: [
            _createRoundedButton(
                Colors.blueAccent, Icons.movie_filter, "Movies"),
            _createRoundedButton(Colors.green, Icons.cloud, "Groceries"),
          ],
        ),
        TableRow(
          children: [
            _createRoundedButton(Colors.red, Icons.collections, "Photos"),
            _createRoundedButton(Colors.teal, Icons.help_outline, "General"),
          ],
        ),
      ],
    );
  }

  Widget _createRoundedButton(Color color, IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 160.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 5.0),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                  ),
                ),
                SizedBox(height: 5.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
