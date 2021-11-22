import 'package:flutter/material.dart';
import 'package:heroanimation2509932017/shared/screen_title.dart';
import 'package:heroanimation2509932017/shared/trip_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"), 
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
             const SizedBox(
              height: 160,
            ),
            Flexible(
              child: TripList(),
            )
            //Sandbox(),
          ],
        )
      )
    );
  }
}
