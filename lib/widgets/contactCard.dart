import 'package:flutter/material.dart';
import './messageform.dart';

class ContactCard extends StatefulWidget {
  @override
  _ContactCardState createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
    elevation: 10,
    color: Colors.white70,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "PLEASE ENTER YOUR DETAILS HERE",
            style: TextStyle(
              color: const Color.fromRGBO(247, 64, 106, 1.0),
              fontFamily: 'Merriweather',
              fontSize: 20.0,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 10.0,
                  color: Color.fromARGB(100, 0, 0, 0),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
              height: 20.0,
            ),
        MessageForm(),
        /* Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
          child: FlatButton(
            child: new Container(
              width: 320.0,
              height: 60.0,
              alignment: FractionalOffset.center,
              decoration: new BoxDecoration(
                
                borderRadius:
                    new BorderRadius.all(const Radius.circular(30.0)),
              ),
              child: new Text(
                "Submit",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                ),
              ),
            ),
            onPressed: _onSubmit,
          ),
        ) */
      ],
    ),
        ),
      );
  }
}
