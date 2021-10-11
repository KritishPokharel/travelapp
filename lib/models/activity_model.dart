import 'package:flutter_travel_ui/models/sub_activities_model.dart';

class Activity {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;
  String button;
  var func;
  

  Activity({
    this.imageUrl,
    this.name,
    this.type,
    this.startTimes,
    this.rating,
    this.price,
    this.button,
    this.func,
  });
}



