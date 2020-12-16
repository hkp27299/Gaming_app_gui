import 'package:flutter/material.dart';
import 'package:ledefi/Screens/subscriptiondetail.dart';

Widget gameHomeCard(
    String plan, String time, String duration, String code, context) {
  return Container(
    height: 162,
    width: 313,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              plan,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Container(
                  height: 72,
                  width: 72,
                  child: Card(
                    color: Color.fromRGBO(115, 18, 88, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(
                      code,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  time + ' HOURS\n' + duration + 'VALIDITY',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 23,
                  width: 70,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Color.fromRGBO(115, 18, 88, 1),
                        )),
                    color: Color.fromRGBO(115, 18, 88, 1),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(SubscriptionDetail.routename);
                    },
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
