import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/functions/navigation.dart';
import 'package:flutter_travel_ui/models/activity_model.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';
import 'package:flutter_travel_ui/models/localstores_model.dart';
import 'package:flutter_travel_ui/screens/popup_screen.dart';
import 'package:flutter_travel_ui/screens/subdestination_screen.dart';
import 'package:flutter_travel_ui/screens/subresturant_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'localstore_screen.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
     Destination destination = widget.destination;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width*0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(18),bottomLeft: Radius.circular(18)),
                    child: Image(
                      image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.info_rounded),
                          iconSize: 30.0,
                          color: Colors.white70,
                         onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => PopupScreen(
                                            destination: destination,
                                          ),
                                        ),
                                      ),
                        ),
                        // IconButton(
                        //   icon: Icon(FontAwesomeIcons.sortAmountDown),
                        //   iconSize: 25.0,
                        //   color: Colors.black,
                        //   onPressed: () => Navigator.pop(context),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 15.0,
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
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.redAccent,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          "Activites",
                          //widget.destination.country,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 15.0,
                bottom: 20.0,
                child: IconButton(
                  onPressed: () {
                    launchUniversalLinkIos(widget.destination.localtionUrl);
                  },
                  icon: Icon(
                    Icons.navigation,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: widget.destination.activities.length,
              itemBuilder: (BuildContext context, int index) {
                Destination destination = widget.destination;
                Activity activity = widget.destination.activities[index];
                return Stack(
                  children: index==0?<Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFB1B7EC),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 231,
                                  child: Text(
                                    activity.name,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    // Text(
                                    //   '\$${activity.price}',
                                    //   style: TextStyle(
                                    //     fontSize: 22.0,
                                    //     fontWeight: FontWeight.w600,
                                    //   ),
                                    // ),
                                    // Text(
                                    //   'per pax',
                                    //   style: TextStyle(
                                    //     color: Colors.grey,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              activity.type,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                           // _buildRatingStars(activity.rating),
                            SizedBox(height: 13.0),
                            Row(
                              children: <Widget>[
                                // Container(
                                //   padding: EdgeInsets.all(5.0),
                                //   width: 70.0,
                                //   decoration: BoxDecoration(
                                //     color: Theme.of(context).accentColor,
                                //     borderRadius: BorderRadius.circular(10.0),
                                //   ),
                                //   alignment: Alignment.center,
                                //   // child: Text(
                                //   //   activity.startTimes[0],
                                //   // ),
                                // ),
                                //SizedBox(width: 10.0),
                                Container(
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                                    color: Colors.black,
                                      onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => SubDestinationScreen(
                                            destination: destination,
                                          ),
                                        ),
                                      ),
                                      child: Text(activity.button,
                                      style: TextStyle(fontSize: 10, color: Colors.white),
                                    
                                      ),
                                    ),
                                    
                                    //Text(
                                    //activity.startTimes[1],
                                    ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 115.0,
                          image: AssetImage(
                            activity.imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ]:index==1?<Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFB1B7EC),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 231,
                                  child: Text(
                                    activity.name,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    // Text(
                                    //   '\$${activity.price}',
                                    //   style: TextStyle(
                                    //     fontSize: 22.0,
                                    //     fontWeight: FontWeight.w600,
                                    //   ),
                                    // ),
                                    // Text(
                                    //   'per pax',
                                    //   style: TextStyle(
                                    //     color: Colors.grey,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              activity.type,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                           // _buildRatingStars(activity.rating),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                // Container(
                                //   padding: EdgeInsets.all(5.0),
                                //   width: 70.0,
                                //   decoration: BoxDecoration(
                                //     color: Theme.of(context).accentColor,
                                //     borderRadius: BorderRadius.circular(10.0),
                                //   ),
                                //   alignment: Alignment.center,
                                //   // child: Text(
                                //   //   activity.startTimes[0],
                                //   // ),
                                // ),
                                SizedBox(height: 10.0),
                                Container(
                                    child: RaisedButton( 
                                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                                    color: Colors.black,
                                      onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => SubResturantScreen(
                                            destination: destination,
                                          ),
                                        ),
                                      ),
                                      child: Text(activity.button,
                                      style: TextStyle(fontSize: 10,color: Colors.white)),
                                    ),
                                    //Text(
                                    //activity.startTimes[1],
                                    ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 115.0,
                          image: AssetImage(
                            activity.imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ]:<Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFB1B7EC),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 231,
                                  child: Text(
                                    activity.name,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    // Text(
                                    //   '\$${activity.price}',
                                    //   style: TextStyle(
                                    //     fontSize: 22.0,
                                    //     fontWeight: FontWeight.w600,
                                    //   ),
                                    // ),
                                    // Text(
                                    //   'per pax',
                                    //   style: TextStyle(
                                    //     color: Colors.grey,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              activity.type,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                           // _buildRatingStars(activity.rating),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                // Container(
                                //   padding: EdgeInsets.all(5.0),
                                //   width: 70.0,
                                //   decoration: BoxDecoration(
                                //     color: Theme.of(context).accentColor,
                                //     borderRadius: BorderRadius.circular(10.0),
                                //   ),
                                //   alignment: Alignment.center,
                                //   // child: Text(
                                //   //   activity.startTimes[0],
                                //   // ),
                                // ),
                                SizedBox(height: 10.0),
                                Container(
                                    // padding: EdgeInsets.all(5.0),
                                    // width: 120.0,
                                    // height: 35,
                                    // // decoration: BoxDecoration(
                                    // //   color: Theme.of(context).accentColor,
                                    // //   borderRadius: BorderRadius.circular(10.0),
                                    // // ),
                                    // alignment: Alignment.center,
                                    child: RaisedButton(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(5.0), ),
                                      onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => Localstores(
                                            destination: destination,
                                          ),
                                        ),
                                      ),
                                      child: Text(activity.button,
                                      style: TextStyle(fontSize: 10,color: Colors.white)),
                                    ),
                                    //Text(
                                    //activity.startTimes[1],
                                    ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 115.0,
                          image: AssetImage(
                            activity.imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  
                );
              },
            ),
          ),
        ],
        
      ),
    );
  }
}
