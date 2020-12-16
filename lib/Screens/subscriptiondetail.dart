import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:ledefi/Screens/payment.dart';
import 'package:ledefi/Widgets/appbar.dart';

class SubscriptionDetail extends StatelessWidget {
  static String routename = '/subscriptiondetail';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appbar('Subscription'),
      body: Container(
        width: width,
        color: Color.fromRGBO(115, 18, 88, 1),
        padding: EdgeInsets.fromLTRB(18, 46, 16, 10),
        child: Column(
          children: [
            Text(
              'STANDARD PACKAGE\nQR 500',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: Colors.white),
            ),
            SizedBox(
              height: 34,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              width: 341,
              height: 43,
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                  Text(
                    '18-07-2020',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              width: 341,
              height: 43,
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hours',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                  Text(
                    '100',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              width: 341,
              height: 43,
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Balance',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                  Text(
                    '100',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              width: 341,
              height: 43,
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Validity',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  ),
                  Text(
                    '13-09-2020',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
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
                  Navigator.of(context).pushNamed(Payment.routename);
                },
                child: Text(
                  'Book Now',
                  style: TextStyle(
                      fontSize: 17, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 39,
              width: 163,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.white,
                onPressed: () {},
                child: Text(
                  'Buy More',
                  style: TextStyle(
                      fontSize: 17, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
