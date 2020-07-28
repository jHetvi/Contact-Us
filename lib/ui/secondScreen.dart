
import 'package:flutter/material.dart';
import 'package:contact_us_task2/widgets/contactCard.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('images/bg2.png'),fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: SingleChildScrollView(
                    reverse: true,
                    physics: BouncingScrollPhysics(),
                    child: ContactCard(),
                  ),
                ))));
  }
}
