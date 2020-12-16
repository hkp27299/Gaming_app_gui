import 'package:flutter/material.dart';
import 'package:ledefi/Widgets/appbar.dart';

class Payment extends StatefulWidget {
  static String routename = '/payment';

  @override
  _PaymentState createState() => _PaymentState();
}

bool val = false;

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appbar('Payment'),
      body: Container(
        color: Color.fromRGBO(115, 18, 88, 1),
        constraints: BoxConstraints.expand(),
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(34),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'QR 200',
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 89,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Card Holder Name',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  TextField(
                    autofocus: false,
                    style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Card Number',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  TextField(
                    autofocus: false,
                    style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Date Of Expiry',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 134,
                        height: 50,
                        child: TextField(
                          autofocus: false,
                          style: TextStyle(
                              fontSize: 22.0, color: Color(0xFFbdc6cf)),
                          decoration: InputDecoration(
                            hintText: 'MM/YY',
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Container(
                        width: 134,
                        height: 50,
                        child: TextField(
                          autofocus: false,
                          style: TextStyle(
                              fontSize: 22.0, color: Color(0xFFbdc6cf)),
                          decoration: InputDecoration(
                            hintText: 'CVV',
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 108,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: val,
                          onChanged: (bool newValue) {
                            setState(() {
                              val = newValue;
                            });
                          }),
                      Text(
                        'I accept the terms and conditions',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                color: Color.fromRGBO(61, 0, 45, 1),
                child: FlatButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          child: new AlertDialog(
                            content: new Text(
                              "Payment successfully !\nSubscription added\nto your account.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pay now',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
