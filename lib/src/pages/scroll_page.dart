import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _firstPage(),
          _secondPage(),
        ],
      ),
    );
  }

  Widget _firstPage() {
    return Stack(children: [
      _backgroundColor(),
      _backgroundImage(),
      _texts(),
    ]);
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage("assets/scroll-1.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _texts() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 56.0);

    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Text(
              "11°",
              style: textStyle,
            ),
            Text(
              "Miercoles",
              style: textStyle,
            ),
            Expanded(child: Container()),
            Icon(
              Icons.keyboard_arrow_down,
              size: 70.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _secondPage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          onPressed: () {},
          shape: StadiumBorder(),
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text(
              "Bienvenidos",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          textColor: Colors.white,
        ),
      ),
    );
  }
}
