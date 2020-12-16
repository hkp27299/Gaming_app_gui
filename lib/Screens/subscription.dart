import 'package:flutter/material.dart';
import 'package:ledefi/Screens/homescreen.dart';
import 'package:ledefi/Widgets/appbar.dart';
import 'package:ledefi/Widgets/card.dart';

class Subscription extends StatefulWidget {
  static String routename = '/subscription';

  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appbar('Subscription'),
      body: Container(
        color: Color.fromRGBO(115, 18, 88, 1),
        constraints: BoxConstraints.expand(),
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            gameHomeCard('Basic', '20', '3 MONTHS ', 'QR\n500', context),
            SizedBox(
              height: 12,
            ),
            gameHomeCard('STANDARD', '100', '6 MONTHS ', 'QR\n500', context),
            SizedBox(
              height: 12,
            ),
            gameHomeCard('PRO PLAN', '250', '1 YEAR ', 'QR\n500', context),
            SizedBox(
              height: 45,
            ),
            Container(
              height: 39,
              width: 163,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamed(HomeScreen.routename);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 17, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "I'll buy later",
              style: TextStyle(
                  fontSize: 17, color: Colors.white, fontFamily: 'Poppins'),
            )
          ],
        ),
      ),
    );
  }
}
