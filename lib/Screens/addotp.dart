import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'profile.dart';

class AddOtp extends StatefulWidget {
  static String routename = '/addotp';

  @override
  _AddOtpState createState() => _AddOtpState();
}

class _AddOtpState extends State<AddOtp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

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
          mainAxisAlignment: MainAxisAlignment.center,
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
                      'Enter 4 digit verification\n code sent to your number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Poppins'),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      obscureText: false,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        inactiveColor: Colors.white,
                        selectedFillColor: Colors.white,
                      ),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Resend code in : 00:23',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Color.fromRGBO(61, 0, 45, 1),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Profile.routename);
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
