import 'package:flutter/material.dart';
import 'package:ledefi/Screens/detailscreen.dart';

Widget homescreencard(String title, String path, color, context) {
  return InkWell(
    onTap: () {
      Navigator.of(context).pushNamed(DetailScreen.routename);
    },
    child: new Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: new Container(
          width: 145.0,
          height: 50.0,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Poppins')),
              SizedBox(
                height: 14,
              ),
              new Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: new DecorationImage(
                    image: new AssetImage(path),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                  border: new Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                ),
              ),
            ],
          ),
        )),
  );
}

Widget bookingcard() {
  return Container(
    padding: EdgeInsets.only(left: 25, right: 15),
    height: 96,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color.fromRGBO(254, 77, 98, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new Container(
            width: 66.0,
            height: 66.0,
            decoration: new BoxDecoration(
              color: const Color(0xff7c94b6),
              image: new DecorationImage(
                image: new AssetImage(
                    'images/2f7840e8046f9644d7b2964fb84b8f26@2x.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
              border: new Border.all(
                color: Colors.white,
                width: 4.0,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PlayStation',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins')),
              Text('30-july-2020\n06-06 PM\nBooking number - LE2245',
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontFamily: 'Poppins')),
            ],
          ),
        ],
      ),
    ),
  );
}
