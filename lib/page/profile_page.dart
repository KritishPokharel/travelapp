
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/location.dart';
import 'package:flutter_travel_ui/models/user.dart';
import 'package:flutter_travel_ui/page/edit_profile_page.dart';
import 'package:flutter_travel_ui/screens/Start.dart';
import 'package:flutter_travel_ui/utils/user_preferences.dart';
import 'package:flutter_travel_ui/widgets/appbar_widget.dart';
import 'package:flutter_travel_ui/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String value= items[0];

  @override
  Widget build(BuildContext context) {

    final user = UserPreferences.myUser;

    return Container(
      child: Builder(
          builder: (context) => Scaffold(
            backgroundColor: Color(0xFFF444C8C),
            appBar: buildAppBar(context),
            body: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                
                  imagePath: user.imagePath,
                  onClicked: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EditProfilePage()),
                    );
                  },
                ),
                const SizedBox(height: 24),
                buildName(user),
                const SizedBox(height: 24),
                Center(child: buildLogOutButton()),
                const SizedBox(height: 30),
                buildAbout(user),
                const SizedBox(height: 26),
                Container(
                   alignment: Alignment.bottomCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      buildSaveButton(),
                    ],
                  ),
                ),
       
              ],
            ),
          ),
        ),
      
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24,color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.white),
          )
        ],
      );

  Widget buildLogOutButton() => FlatButton(
    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
    color: Color(0xFFFB1B7EC),
    onPressed: (){
                      Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Start()),
                    );
    }, child: Text("Logout", style: TextStyle(color: Colors.black), )
    );
        
  Widget buildSaveButton() => FlatButton(
    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
    color: Color(0xFFFB1B7EC),
    onPressed: (){

    }, child: Text("Save Changes", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300), )
    );
        

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:
                  Text(
                    'Notes',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: Colors.white),
                  ),
              ),
            const SizedBox(height: 5),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4,color: Colors.white),
            ),
            const SizedBox(height: 22),
            Container(
            child: Text("Selected Location: $value",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.white),
            ),
            ),
            SizedBox(height: 15,),
            Container(
              
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(color: Color(0xFFFB1B7EC),width: 2),
              ),
              child: DropdownButtonHideUnderline(
                child: new DropdownButton<String>(
                  menuMaxHeight: MediaQuery.of(context).size.height*0.3,
                  isDense: true,
                  value: value,
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down,color: Color(0xFFFB1B7EC),),
                  isExpanded: true,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value = value),
                ),
              ),
            ),
            
          ],
        ),
      );
      

       DropdownMenuItem<String>buildMenuItem(String item)=>
          DropdownMenuItem(
            value: item,
            child: Text(
              item,
              style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15,color: Colors.black),
            ),
            );
}
