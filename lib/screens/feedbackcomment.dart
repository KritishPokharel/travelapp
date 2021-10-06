import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myFeedbackText = "COULD BE BETTER";
  var sliderValue = 0.0;
  IconData myFeedback = FontAwesomeIcons.sadTear;
  Color myFeedbackColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        color: Color(0xffE5E5E5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                    margin: EdgeInsets.only(left: 3,top: 6),
                    child: IconButton(icon: Icon(Icons.arrow_back), onPressed:() => Navigator.pop(context)
                    ,iconSize: 25,)),
            Container(child:Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(child: Text("1. How happy are you with our work? Please Leave us Feedback!",
                style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),
            ),),
            SizedBox(height: 10,),
            Container(
              child: Align(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Container(
                      width: 350.0,
                      height: 450,
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Text(myFeedbackText,
                            style: TextStyle(color: Colors.black, fontSize: 22.0),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Icon(
                            myFeedback, color: myFeedbackColor, size: 100.0,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Slider(
                            min: 0.0,
                            max: 10.0,
                            divisions: 5,
                            value: sliderValue,
                            activeColor: Colors.black,
                            //Color(0xffe05f2c) ,
                            inactiveColor: Colors.blueGrey,
                            onChanged: (newValue) {
                              setState(() {
                                sliderValue = newValue;
                                if (sliderValue >= 0.0 && sliderValue <= 2.0) {
                                  myFeedback = FontAwesomeIcons.sadTear;
                                  myFeedbackColor = Colors.red;
                                  myFeedbackText = "COULD BE BETTER";
                                }
                                if (sliderValue >= 2.1 && sliderValue <= 4.0) {
                                  myFeedback = FontAwesomeIcons.frown;
                                  myFeedbackColor = Colors.yellow;
                                  myFeedbackText = "BELOW AVERAGE";
                                }
                                if (sliderValue >= 4.1 && sliderValue <= 6.0) {
                                  myFeedback = FontAwesomeIcons.meh;
                                  myFeedbackColor = Colors.amber;
                                  myFeedbackText = "NORMAL";
                                }
                                if (sliderValue >= 6.1 && sliderValue <= 8.0) {
                                  myFeedback = FontAwesomeIcons.smile;
                                  myFeedbackColor = Colors.green;
                                  myFeedbackText = "GOOD";
                                }
                                if (sliderValue >= 8.1 && sliderValue <= 10.0) {
                                  myFeedback = FontAwesomeIcons.laugh;
                                  myFeedbackColor = Colors.pink;
                                  myFeedbackText = "EXCELLENT";
                                }
                              });
                            },
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: const Offset(0.0, 15.0),
            color: Color(0XFF303030).withAlpha(20)
          )
        ]
      ),
      child: TextField(
        textInputAction: TextInputAction.newline,
        keyboardType: TextInputType.multiline,
        maxLines: 4,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Additional comment',
          hintStyle: TextStyle(
            letterSpacing: 1,
            color: Color(0XFFD9D9D9),
          )
        ),
      ),
    ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            margin: EdgeInsets.only(right: 14),
                            child: Align(
                            alignment: Alignment.bottomRight,
                            child: RaisedButton(
                              shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              color: Colors.black,
                              child: Text('Submit',
                                style: TextStyle(color: Color(0xffffffff)),),
                              onPressed: () {

                              },
                            ),
                          )),
                        ),
                      ],)
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