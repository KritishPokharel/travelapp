import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/functions/navigation.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';
import 'package:flutter_travel_ui/models/sub_resturants_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubResturantScreen extends StatefulWidget {
  final Destination destination;

  SubResturantScreen({this.destination});

  @override
  _SubResturantScreenState createState() => _SubResturantScreenState();
}

class _SubResturantScreenState extends State<SubResturantScreen> {
  //URL Navigate

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
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                //margin: EdgeInsets.only(top: 80),
                height: MediaQuery.of(context).size.width * 0.85,
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
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(18),bottomLeft: Radius.circular(18)),
                  child: Image(
                    image: AssetImage(widget.destination.subresturantimageurl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //),
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
                    // Row(
                    //   children: <Widget>[
                    //     IconButton(
                    //       icon: Icon(Icons.search),
                    //       iconSize: 30.0,
                    //       color: Colors.black,
                    //       onPressed: () => Navigator.pop(context),
                    //     ),
                    //     IconButton(
                    //       icon: Icon(FontAwesomeIcons.sortAmountDown),
                    //       iconSize: 25.0,
                    //       color: Colors.black,
                    //       onPressed: () => Navigator.pop(context),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
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
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.redAccent,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          "Recommended Resturants",
                          //widget.destination.country,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Positioned(
              //   right: 20.0,
              //   bottom: 20.0,
              //   child: IconButton(
              //     onPressed: (){
              //        _LaunchUniversalLinkIos(_launchUrl);
              //     }, //launch hanna
              //     icon: Icon(
              //       Icons.navigation,
              //       color: Colors.white,
              //       size: 25.0,
              //     ),
              //   ),
              // ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: widget.destination.subresturants.length,
              itemBuilder: (BuildContext context, int index) {
                SubResturant subresturant =
                    widget.destination.subresturants[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                      height: 180.0,
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
                                  width: 150.0,
                                  child: Text(
                                    subresturant.name,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                 IconButton(
                                      onPressed: () {
                                        launchUniversalLinkIos(
                                            subresturant.subactivityUrl);
                                      },
                                      icon: Icon(
                                        Icons.navigation,
                                        color: Colors.black,
                                        //size: 25.0,
                                      ),
                                    ),
                               // Column(
                                  //children: <Widget>[
                                   
                                    // Text(
                                    //   '\$${subactivity.price}',
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
                                  //],
                                //),
                              ],
                            ),
                            Container(
                              width: 1200,
                              child: Text(
                                subresturant.type,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          SizedBox(height: 5.0),
                          _buildRatingStars(subresturant.rating),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    subresturant.startTimes[0],
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 80.0,
                                    //height: 35,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: Alignment.center,
                                //     child: RaisedButton(
                                //     onPressed: () => print("New screen"),
                                //  child: Text("SubActivity"),)
                                    child: Text(
                                      subresturant.startTimes[1],
                                    ),
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
                            subresturant.imageUrl,
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
