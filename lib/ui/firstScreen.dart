import 'package:flutter/material.dart';
import 'package:contact_us_task2/widgets/introCard.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('images/bg1.jpg'),fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: SingleChildScrollView(
                    reverse: true,
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 150.0),
                    child: IntroCard(),
                  ),
                )
        )
      )
    );
  }
}
