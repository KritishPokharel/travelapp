import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopupScreen extends StatefulWidget {
  final Destination destination;

  PopupScreen({this.destination});

  @override
  _PopupScreenState createState() => _PopupScreenState();
}

class _PopupScreenState extends State<PopupScreen> {



  @override
  Widget build(BuildContext context) {
    Destination destination = widget.destination;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                //margin: EdgeInsets.only(top: 80),
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                //child: Hero(
                //tag: widget.destination.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(22),bottomLeft: Radius.circular(22)),

                  child: Image(
                    width: double.infinity,
                    // image: AssetImage(widget.destination.imageUrl
                    image: AssetImage('assets/images/boudha.png')
                    ,
                    fit: BoxFit.cover
                    ),
                
                  ),
                ),
              
              //),
              
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.city,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  
                  ],
                ),
              ),
            ],
          ), 
          
          Stack(children: [
            Row(children: [
              Padding(padding: EdgeInsets.only(
                left:  MediaQuery.of(context).size.width*0.05,
                top: MediaQuery.of(context).size.height*0.02),
              child:Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.height* 0.15,
                decoration: BoxDecoration(
                  color:Color(0xffB1B7EC),
                  borderRadius: BorderRadius.circular(20),
                    boxShadow: [
      BoxShadow(
        color: Colors.black,
        spreadRadius: 1,
        blurRadius: 0,
        offset: Offset(0, 1), // changes position of shadow
      ),
    ],



                ),
                child: Column(children: [
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                  child:Icon(Icons.attach_money,
                  size: 25,
                  ),
                  
                  ),
                   Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                  child: Text('Price',
                  style: TextStyle(
                   
                    fontSize:20,
                    fontWeight: FontWeight.w500
                  )
                  )
                  
                  ),
              



                ],))

              ),

Padding(padding: EdgeInsets.only(
                left:  MediaQuery.of(context).size.width*0.05,
                top: MediaQuery.of(context).size.height*0.02),
              child:Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.height* 0.15,
                decoration: BoxDecoration(
                  color:Color(0xffB1B7EC),
                  borderRadius: BorderRadius.circular(20),
                    boxShadow: [
      BoxShadow(
        color: Colors.black,
        spreadRadius: 1,
        blurRadius: 0,
        offset: Offset(0, 1), // changes position of shadow
      ),
    ],



                ),
                child: Column(children: [
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                  child:Text('!',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20
                  )
                  )
                  
                  ),
                   Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                  child: Text('Precautions',
                  style: TextStyle(
                   
                    fontSize:17,
                    fontWeight: FontWeight.w500
                  )
                  )
                  
                  ),
              



                ],))

              ),Padding(padding: EdgeInsets.only(
                left:  MediaQuery.of(context).size.width*0.05,
                top: MediaQuery.of(context).size.height*0.02),
              child:Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.height* 0.15,
                decoration: BoxDecoration(
                  color:Color(0xffB1B7EC),
                  borderRadius: BorderRadius.circular(20),
                    boxShadow: [
      BoxShadow(
        color: Colors.black,
        spreadRadius: 1,
        blurRadius: 0,
        offset: Offset(0, 1), // changes position of shadow
      ),
    ],



                ),
                child: Column(children: [
                  Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                  child:Icon(Icons.access_time_filled,
                  size: 25,
                  ),
                  
                  ),
                   Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
                  child: Text('Time',
                  style: TextStyle(
                   
                    fontSize:20,
                    fontWeight: FontWeight.w500
                  )
                  )
                  
                  ),
              



                ],))

              ),
              
              

            ],),
SafeArea(child:
            Padding(padding: EdgeInsets.only(
              left:  MediaQuery.of(context).size.width*0.04,
              right:MediaQuery.of(context).size.width*0.04,
              top:MediaQuery.of(context).size.height*0.2),
            child:Container(
              child: Center(
                child: Text("Boudha is a stupa in Kathmandu, Nepal. Located about 11 km from the center and northeastern outskirts of Kathmandu, its massive mandala makes it one of the largest spherical stupas in Nepal and the world. The influx of large populations of refugees from Tibet has seen the construction of over 50 gompas around Boudha.The stupa is on the ancient trade route from Tibet which enters the Kathmandu Valley by the village of Sankhu in the northeast corner and continues to the ancient and smaller stupa of Chabahil named Charumati Stupa (often called 'Little Boudhanath'). It then turns directly south, heading over the Bagmati River to Lalitpur, bypassing the main city of Kathmandu (which was built later).",
                style:TextStyle(color:Colors.white),
                )
              ),

            )
            
            )

)
            
          ],
          )
        ],
      ),
    );
  }
}
