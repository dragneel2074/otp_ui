import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({Key? key}) : super(key: key);

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
                        icon: Icon(
                          Icons.arrow_back_ios,
                        ),
                        iconSize: 30,
                      ),
                      SizedBox(width: 60),
                      Text(
                        'Verify Phone',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Code is sent to +977 9846 8638 77',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 80),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FormField(),
                      FormField(),
                      FormField(),
                      FormField(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn\'t Recieve the Code?',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Request again',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Get via Call',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Verify and Continue',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
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

class FormField extends StatelessWidget {
  const FormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(15),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xffF6F5FA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        // inputFormatters: [
        //   FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,1}')),
        // ],
        style: TextStyle(fontSize: 18),
        decoration: new InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: '5'),
      ),
    );
  }
}
