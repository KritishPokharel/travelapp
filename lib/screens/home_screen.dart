import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/page/profile_page.dart';
import 'package:flutter_travel_ui/widgets/destination_carousel.dart';
import 'package:flutter_travel_ui/widgets/hotel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_travel_ui/screens/feedbackcomment.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    // FontAwesomeIcons.plane,
    // FontAwesomeIcons.bed,
    // FontAwesomeIcons.walking,
    // FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25.0, right:20),
              child:Stack(
                children: <Widget>[
                  Text(
                  'What would you like to find?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Positioned(
                //   //top:4,
                //   right: 0,
                //   child: IconButton(
                //     onPressed: (){},
                //     icon:Icon(
                //     Icons.search))
                //     )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
            //SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.only(left:20,right: 3),
              //height: 30,
              child: Image(
                width: double.infinity,
                height:100,
                fit: BoxFit.fill,
                image:AssetImage('assets/images/banner.png'))),
            SizedBox(height: 20.0),
            HotelCarousel(),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF444C8C),
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value; 
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
              color: Color(0xFFB1B7EC),
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
              icon: Icon(
                Icons.feedback,
                size: 30.0,
              ),
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed:  () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
              icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            )),
            title: SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
