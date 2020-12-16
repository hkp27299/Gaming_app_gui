import 'package:flutter/material.dart';
import 'package:ledefi/Screens/homescreen.dart';
import 'package:ledefi/Screens/subscription.dart';
import 'package:ledefi/Widgets/appbar.dart';

class Profile extends StatelessWidget {
  static String routename = '/profile';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appbar('Profile'),
      body: Container(
        padding: EdgeInsets.all(25),
        width: width,
        color: Color.fromRGBO(115, 18, 88, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              width: 94.0,
              height: 94.0,
              child: new Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  new Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage("images/image 2.png")))),
                  new Align(
                    alignment: Alignment.bottomRight,
                    child: new Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      alignment: Alignment.center,
                      child: new Text(
                        '+',
                        style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Shroud',
                        labelStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: '+947 1234567890',
                        labelStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Al thana ,abu-dabi',
                        labelStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Shroud12@gmail.com',
                        labelStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
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
                  Navigator.of(context).pushNamed(Subscription.routename);
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 17, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
