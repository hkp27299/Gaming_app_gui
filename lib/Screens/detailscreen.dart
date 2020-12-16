import 'package:flutter/material.dart';
import 'package:ledefi/Widgets/homescreencard.dart';

class DetailScreen extends StatefulWidget {
  static String routename = '/detailscreen';

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

int count = 1;

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 20, right: 30),
              height: 246,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/billiard.png",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
            Text('QR 100',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins')),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Billiard',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins')),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        'Cue sports, also known as billiard sports, are a wide\n variety of games of skill generally played with a cue stick,\n which is used to strike billiard balls and thereby cause\n them to move around a cloth-covered billiards table\n bounded by elastic bumpers known as cushions.',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontFamily: 'Poppins')),
                    SizedBox(
                      height: 11,
                    ),
                    Text('Board spec',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins')),
                    SizedBox(
                      height: 15,
                    ),
                    Text('7 X 11 X 15',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontFamily: 'Poppins')),
                    SizedBox(
                      height: 21,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Select Date',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins')),
                        Icon(
                          Icons.calendar_today,
                          color: Color.fromRGBO(115, 18, 88, 1),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(61, 0, 45, 1),
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
