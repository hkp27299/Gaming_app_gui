import 'package:flutter/material.dart';
import 'package:ledefi/Widgets/homescreencard.dart';

class HomeScreen extends StatefulWidget {
  static String routename = '/homescreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

int _index = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(61, 0, 45, 1),
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text("Home",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontFamily: 'Poppins'))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              title: Text("Bookings",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontFamily: 'Poppins'))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text("Profile",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontFamily: 'Poppins'))),
        ],
      ),
      body: Container(
        width: width,
        height: height,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 20, right: 30),
              height: 246,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/unnamed (1)@3x.png",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Image.asset(
                    'images/Group 3271.png',
                    height: 38,
                    width: 43,
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              padding: EdgeInsets.all(10),
              child: Center(
                child: new ListView(
                  children: <Widget>[
                    new Container(
                      height: 200,
                      width: 145,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: new List.generate(
                          3,
                          (int index) {
                            return homescreencard(
                                index == 0
                                    ? 'Billiard'
                                    : index == 1 ? 'Snooker' : 'PlayStation',
                                index == 0
                                    ? 'images/unnamed (1).png'
                                    : index == 1
                                        ? 'images/unnamed.png'
                                        : 'images/2f7840e8046f9644d7b2964fb84b8f26@2x.png',
                                index == 0
                                    ? Colors.green
                                    : index == 1
                                        ? Colors.blue
                                        : Color.fromRGBO(254, 77, 98, 1),
                                context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 31, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Bookings',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Poppins')),
                  Text('View all',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontFamily: 'Poppins'))
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: new ListView(
                    children: <Widget>[
                      new Container(
                        height: 200,
                        width: 145,
                        child: new ListView(
                          scrollDirection: Axis.vertical,
                          children: new List.generate(
                            3,
                            (int index) {
                              return bookingcard();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
