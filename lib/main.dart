import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_app/screen2.dart';

import 'constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage2(),
    );
  }
}

class MyHomePage1 extends StatelessWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            padding: EdgeInsets.all(15),
            color: Color(0xffFFFFFF),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.close),
                        iconSize: 30,
                      ),
                      SizedBox(width: 55),
                      Text(
                        'Continue with Phone',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  width: 250,
                  padding: EdgeInsets.all(20),
                  child: Image.network(url),
                ),
                Container(
                  padding: EdgeInsets.only(right: 50, left: 50, bottom: 20),
                  child: Text(
                    'You will receive a 4 digit code to verify next.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter your Phone',
                        style: TextStyle(fontSize: 15),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 10),
                          SizedBox(
                            height: 100,
                            width: size.width / 2,
                            child: TextFormField(
                              style: TextStyle(fontSize: 20, color: Colors.red),
                              decoration: InputDecoration(
                                labelText: '+977 XXXX XXXX XX',
                                labelStyle: TextStyle(fontSize: 18),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(20),
                                // ),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 145,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Continue',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

