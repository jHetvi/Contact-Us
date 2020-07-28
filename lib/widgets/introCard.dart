import 'package:flutter/material.dart';
import 'package:contact_us_task2/ui/secondScreen.dart';

class IntroCard extends StatefulWidget {
  @override
  _IntroCardState createState() => _IntroCardState();
}

class _IntroCardState extends State<IntroCard> with TickerProviderStateMixin {
  void _onPressed() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Get in Touch.",
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 60.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "You can get in touch with new business opportunities, general inquries and more.",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Merriweather',
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
              child: FlatButton(
                child: new Container(
                  width: 320.0,
                  height: 60.0,
                  alignment: FractionalOffset.center,
                  decoration: new BoxDecoration(
                      color: const Color.fromRGBO(247, 64, 106, 1.0),
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(30.0)),
                      ),
                  child: new Text(
                    "Contact Us",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
                onPressed: _onPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
