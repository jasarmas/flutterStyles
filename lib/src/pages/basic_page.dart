import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _createImage(),
            _createTitle(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&w=1000&q=80"),
          height: 200.0,
          fit: BoxFit.cover),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lago con rio",
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    "Un lago que al anochecer cae la penumbra morada",
                    style: subtitleStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _action(Icons.call, "CALL"),
        _action(Icons.near_me, "ROUTE"),
        _action(Icons.share, "SHARE"),
      ],
    );
  }

  Widget _action(IconData icon, String text) {
    return Column(children: [
      Icon(
        icon,
        color: Colors.blue,
        size: 40.0,
      ),
      SizedBox(height: 5.0),
      Text(text,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.blue,
          )),
    ]);
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Text(
            "ASDFASDFASDFD SDAF ASDF ASDF ASDF ASDF ASDF ASDF AFA SDF ASDF ASDFA SDAS FASD FASDF ASDFA SDF F3E QERG QERG QEKRGM QERKMERK MGQERKLGM QERLKMG QEKRLMGLQEKRMG ERQKLM QKLERM KLRM QREMGQERLKGMQELRKGMQERLKGMEQLKRGM EQKRLMG KQEMRGL KEQMRGKL"),
      ),
    );
  }
}
