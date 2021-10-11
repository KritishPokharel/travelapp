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
    Destination destination = widget.destination;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                //margin: EdgeInsets.only(top: 80),
                height: MediaQuery.of(context).size.height * 0.4,
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
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    width: double.infinity,
                    image: AssetImage(widget.destination.imageUrl),
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
                      color: Colors.black,
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
          Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height*0.55,
                      margin: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 5.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 200),
                    margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Text(destination.popuptext,
                    textAlign: TextAlign.left,
                    maxLines: 40,
                    style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.8,
                                ),
                                ),
                                ),
                  Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text("Price: ${destination.price}",
                  textAlign: TextAlign.left,
                   style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                                ),
                                ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Text("Best Time to visit: ${destination.bestvisit}",
                     textAlign: TextAlign.left,
                   style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                                ) ,
                                ),
                   Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Text("Measures and Precaution:${destination.Measures}",
                     textAlign: TextAlign.left,
                   style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                                ) ,
                                )
                ],
              ),
          )
          ],
          )
        ],
      ),
    );
  }
}
