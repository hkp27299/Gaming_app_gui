import 'package:flutter/material.dart';
import 'package:ledefi/Screens/addotp.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Color.fromRGBO(242, 39, 188, 5), BlendMode.softLight),
                image: AssetImage(
                  "images/gaming-wallpaper-1.png",
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Group 3271.png',
                        height: 108, width: 123),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'Enter your mobile number',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Poppins'),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText:
                            '                           Enter your mobile number',
                        counterText: "",
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 50.0, 10.0),
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'Poppins'),
                        prefixIcon: SizedBox(
                          child: Center(
                            widthFactor: 0.0,
                            child: Text('\+974  ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Poppins')),
                          ),
                        ),
                      ),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins'),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(61, 0, 45, 1),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AddOtp.routename);
                },
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
