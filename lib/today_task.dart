import 'package:flutter/material.dart';

class BodyPart extends StatefulWidget {
  const BodyPart({Key? key}) : super(key: key);

  @override
  _BodyPartState createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {
  Widget movieCard(
    String imgVal,
  ) {
    return Container(
      width: 80.0,
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child: Image.asset(
              imgVal,
              fit: BoxFit.fill,
              width: 130.0,
              height: 160.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        movieCard("assets/images/P.png"),
        movieCard("assets/images/P.png"),
        movieCard("assets/images/P.png"),
        movieCard("assets/images/P.png"),
        movieCard("assets/images/P.png"),
        movieCard("assets/images/P.png"),
        movieCard("assets/images/P.png"),
        movieCard("assets/images/P.png"),
        movieCard("assets/images/P.png"),
        movieCard("assets/images/P.png"),
      ],
    );
  }
}
