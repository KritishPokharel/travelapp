
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/user.dart';
import 'package:flutter_travel_ui/utils/user_preferences.dart';
import 'package:flutter_travel_ui/widgets/appbar_widget.dart';
import 'package:flutter_travel_ui/widgets/button_widget.dart';
import 'package:flutter_travel_ui/widgets/profile_widget.dart';
import 'package:flutter_travel_ui/widgets/textfield_widget.dart';

import '../constants.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => ThemeProvider(
    child:  Builder(
            builder: (context) => Scaffold(
              appBar: buildAppBar(context),
              body: ListView(
                padding: EdgeInsets.symmetric(horizontal: 32),
                physics: BouncingScrollPhysics(),
                children: [
                  ProfileWidget(
                    imagePath: user.imagePath,
                    isEdit: true,
                    onClicked: () async {},
                  ),
                  // const SizedBox(height: 24),
                  // TextFieldWidget(
                  //   label: 'Full Name',
                  //   text: user.name,
                  //   onChanged: (name) {},
                  // ),
                  // const SizedBox(height: 24),
                  // TextFieldWidget(
                  //   label: 'Email',
                  //   text: user.email,
                  //   onChanged: (email) {},
                  // ),
                  const SizedBox(height: 24),
                  TextFieldWidget(
                    label: 'Edit Notes',
                    text: user.about,
                    maxLines: 5,
                    onChanged: (about) {},
                  ),
                  Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      buildSaveButton(),
                    ],
                  ),
                )
                ],
              ),
            ),
          ),
        
  );

 Widget buildSaveButton() => ButtonWidget(
        text: 'Save Changes',
        onClicked: () {},
      );
}
