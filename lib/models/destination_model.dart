import 'package:flutter_travel_ui/models/activity_model.dart';
import 'package:flutter_travel_ui/models/sub_activities_model.dart';
import 'package:flutter_travel_ui/models/localstores_model.dart';
import 'package:flutter_travel_ui/models/sub_resturants_model.dart';
import 'package:flutter_travel_ui/screens/localstore_screen.dart';
 Destination destination;

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  String localtionUrl;
  String subactivityimageurl;
  String subresturantimageurl;
  String localstoreimageurl;
  List<Activity> activities;
  List<SubActivity>subactivities;
  List<SubResturant>subresturants;
  List<LocalStores>localstores;
  String popuptext;
  String price;
  String bestvisit;
  String Measures;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
    this.subactivities,
    this.localtionUrl,
    this.subresturants,
    this.subactivityimageurl,
    this.subresturantimageurl,
    this.localstoreimageurl,
    this.popuptext,
    this.price,
    this.bestvisit,
    this.Measures,
    this.localstores,
  });
}

List<SubActivity> firstdestinationsubactivities = [
  SubActivity(
    imageUrl: 'assets/images/task_one.png',
    name: 'Roll Prayer Wheels',
    type: 'Encircle the dome rotating the prayer wheels in the clockwise direction',
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
  ),
    SubActivity(
    imageUrl: 'assets/images/task_one.png',
    name: 'Biggest Prayer Wheel',
    type: 'Rotate the biggest prayer wheel',
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
  ),
  SubActivity(
    imageUrl: 'assets/images/task_two.png',
    name: 'Feed the Pegions',
    type: 'Buy grains for Rs 20/ 30 and Feed the pigeons ',
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
  ),
     SubActivity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Light the oil Lamp',
    type: 'Light an oil lamp and put it on the trestle table and make your prayers',
    subactivityUrl: 'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
  ),
  SubActivity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Monasteries Climb',
    type: 'Visit monasteries/ climb on the platform to get a zoomed view of the stupa ',
    //startTimes: ['12:30 pm', '2:00 pm'],
    subactivityUrl: 'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
    //rating: 3,
    //price: 125,
  ),
 
];

List<SubActivity> seconddestinationsubactivities = [
  SubActivity(
    imageUrl: 'assets/images/task_one.png',
    name: 'Roll Prayer Wheels',
    type: 'Encircle the pashupatinath stupa by rotating the prayer wheels.',
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
  ),
  // SubActivity(
  //   imageUrl: 'assets/images/task_two.png',
  //   name: 'Feed the Pegions',
  //   type: 'Buy some grains and corns to feed the pigeons',
  //   startTimes: ['11:00 pm', '1:00 pm'],
  //   subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
  //   rating: 4,
  //   price: 210,
  // ),
  SubActivity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    subactivityUrl: 'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
  ),
];

List<SubActivity> thirddestinationsubactivities = [
  SubActivity(
    imageUrl: 'assets/images/task_one.png',
    name: 'Roll Prayer Wheels',
    type: 'Encircle the boudhanath stupa by rotating the prayer wheels.',
    // startTimes: ['9:00 am', '11:00 am'],
    // subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
    // rating: 5,
    // price: 30,
  ),
  SubActivity(
    imageUrl: 'assets/images/task_two.png',
    name: 'Feed the Pegions',
    type: 'Buy some grains and corns to feed the pigeons',
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
  ),
  // SubActivity(
  //   imageUrl: 'assets/images/murano.jpg',
  //   name: 'Murano and Burano Tour',
  //   type: 'Sightseeing Tour',
  //   startTimes: ['12:30 pm', '2:00 pm'],
  //    subactivityUrl: 'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
  //   rating: 3,
  //   price: 125,
  // ),
];


List<LocalStores> firstlocalstore = [
  LocalStores(
    imageUrl: 'assets/images/task_one.png',
    name: 'Local Hai vai Local',
    type: 'Encircle the boudhana stupa by rotating the prayer wheels.',
    startTimes: ['9:00 am', '11:00 am'],
    localstoreUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
    rating: 5,
  ),
];

List<SubResturant> firstdestinationsubresturants = [
  SubResturant(
    imageUrl: 'assets/images/task_one.png',
    name: '2K21 Da Capital Java',
    type: 'Encircle the boudhana stupa by rotating the prayer wheels.',
    startTimes: ['9:00 am', '11:00 am'],
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
    rating: 5,
  ),
  SubResturant(
    imageUrl: 'assets/images/task_two.png',
    name: 'Nani’s Kitchen',
    type: 'Buy some grains and corns to feed the pigeons',
    startTimes: ['11:00 pm', '1:00 pm'],
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
    rating: 4,
  ),
    SubResturant(
    imageUrl: 'assets/images/task_two.png',
    name: 'Alaya Cafe & Restaurant',
    type: 'Buy some grains and corns to feed the pigeons',
    startTimes: ['11:00 pm', '1:00 pm'],
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
    rating: 4,
  ),
  SubResturant(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Hmalayan Kitchen & Coffee co.i',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
     subactivityUrl: 'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
    rating: 3,
  ),
];

List<SubResturant> seconddestinationsubresturants = [
  SubResturant(
    imageUrl: 'assets/images/task_one.png',
    name: ' hotel yer Wheels',
    type: 'Encircle the boudh stupa by rotating the prayer wheels.',
    startTimes: ['9:00 am', '11:00 am'],
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
    rating: 5,
  ),
  SubResturant(
    imageUrl: 'assets/images/task_two.png',
    name: 'Feed the Pegions',
    type: 'Buy some grains and corns to feed the pigeons',
    startTimes: ['11:00 pm', '1:00 pm'],
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
    rating: 4,
  ),
  // SubResturant(
  //   imageUrl: 'assets/images/murano.jpg',
  //   name: 'Murano and Burano Tour',
  //   type: 'Sightseeing Tour',
  //   startTimes: ['12:30 pm', '2:00 pm'],
  //    subactivityUrl: 'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
  //   rating: 3,
  //   price: 125,
  // ),
];
List<SubResturant> thirddestinationsubresturants = [
  SubResturant(
    imageUrl: 'assets/images/task_one.png',
    name: 'Roll Prayer Wheels',
    type: 'Encircle the boudhanath stupa by rotating the prayer wheels.',
    startTimes: ['9:00 am', '11:00 am'],
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
    rating: 5,
   
  ),
  SubResturant(
    imageUrl: 'assets/images/task_two.png',
    name: 'Feed the Pegions',
    type: 'Buy some grains and corns to feed the pigeons',
    startTimes: ['11:00 pm', '1:00 pm'],
    subactivityUrl: 'https://goo.gl/maps/1hcei4Qhc5YFhV4c9',
    rating: 4,
  ),
  // SubResturant(
  //   imageUrl: 'assets/images/murano.jpg',
  //   name: 'Murano and Burano Tour',
  //   type: 'Sightseeing Tour',
  //   startTimes: ['12:30 pm', '2:00 pm'],
  //    subactivityUrl: 'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
  //   rating: 3,
  // ),
];

List<Activity> firstdestinationactivities = [
  Activity(
    imageUrl: 'assets/images/image2.png',
    name: 'SightSeeing',
    type: 'Explore Boudha to its fullest.',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
    button: 'SubActivity',
  
    
  ),
  Activity(
    imageUrl: 'assets/images/resturant.png',
    name: 'Restaurants',
    type: 'Explore the hidden cuisines in Bouddha.',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
    button: 'Explore',
  

  ),
    Activity(
    imageUrl: 'assets/images/bouddha_local.png',
    name: 'Local Stores',
    type: 'Explore hidden stores in Bouddha.',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
    button: 'Explore',
  
    
  ),
  // Activity(
  //   imageUrl: 'assets/images/murano.jpg',
  //   name: 'Explore the Hidden',
  //   type: 'Go Local!!!',
  //   startTimes: ['12:30 pm', '2:00 pm'],
  //   rating: 3,
  //   price: 125,
  //   button: 'Sub Stores'
  // ),
];


List<Activity> seconddestinationactivities = [
  Activity(
    imageUrl: 'assets/images/bouddha_second.png',
    name: 'SightSeeing',
    type: 'Explore pashupati to its fullest.',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
    button: 'SubActivity',
   
    
  ),
  Activity(
    imageUrl: 'assets/images/resturant.png',
    name: 'Restaurants',
    type: 'Explore the hidden cuisines.',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
    button: 'Sub Resturants',

  ),
  // Activity(
  //   subactivityimageurl:'assets/images/resturant.png',
  //   imageUrl: 'assets/images/murano.jpg',
  //   name: 'Murano and Burano Tour',
  //   type: 'Sightseeing Tour',
  //   startTimes: ['12:30 pm', '2:00 pm'],
  //   rating: 3,
  //   price: 125,
  //   button: 'Sub Stores'
  // ),
];

List<Activity> thirddestinationactivities = [
  Activity(
    imageUrl: 'assets/images/bouddha_second.png',
    name: 'SightSeeing',
    type: 'Explore Boudha to its fullest.',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
    button: 'SubActivity',
  
    
  ),
  Activity(
    imageUrl: 'assets/images/resturant.png',
    name: 'Restaurants',
    type: 'Explore the hidden cuisines.',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
    button: 'Sub Resturants',
   

  ),
  // Activity(
  //   imageUrl: 'assets/images/murano.jpg',
  //   name: 'Murano and Burano Tour',
  //   type: 'Sightseeing Tour',
  //   startTimes: ['12:30 pm', '2:00 pm'],
  //   rating: 3,
  //   price: 125,
  //   button: 'Sub Stores'
  // ),
];



List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/bouddha.png',
    subactivityimageurl: 'assets/images/bouddha.png',
    subresturantimageurl:  'assets/images/bouddha.png', 
    localstoreimageurl:'assets/images/bouddha.png',
    city: 'Boudhanath Stupa',
    country: 'Bouddha',
    description: 'Soak up in the spiritual vibes and buzzing energy from dawn to dusk around Boudhanath Stupa. ',
    localtionUrl:'https://www.google.com/maps/place/Boudha+Stupa/@27.7215062,85.3598087,17z/data=!3m1!4b1!4m5!3m4!1s0x39eb1bda4a951f0f:0x3ddabb234891c3bd!8m2!3d27.7215062!4d85.3619974',
    activities: firstdestinationactivities,
    subactivities: firstdestinationsubactivities,
    subresturants: firstdestinationsubresturants,
    localstores: firstlocalstore,
    //popup box lai ho yai yo
    popuptext: "Hiiiiiii",
    price: "Hi",
    bestvisit: "hi",
    Measures: "hi"
  ),
  Destination(
    imageUrl: 'assets/images/pashupati.jpeg',
    subactivityimageurl: 'assets/images/pashupati.jpeg',
    subresturantimageurl:  'assets/images/pashupati.jpeg',
    city: 'Pashupatinath Temple',
    country: '-Gausala',
    description: 'Immerse yourself in the scared placed dedicated to lord Shiva.',
    localtionUrl:'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
    activities: seconddestinationactivities,
    subactivities: seconddestinationsubactivities,
    subresturants: seconddestinationsubresturants,
    //popup box lai ho yai yo
    popuptext: "Hello",
    price: "Hi",
    bestvisit: "hi",
    Measures: "hi"
  ),

  Destination(
    imageUrl: 'assets/images/swam.jpg',
    subactivityimageurl: 'assets/images/pashupati.jpeg',
    subresturantimageurl:  'assets/images/pashupati.jpeg',
    city: 'Swayambhunath Stupa',
    country: 'Swayambhu',
    description: 'Visit Swayambhunath for amazing experinces and enjoy.',
    localtionUrl:'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
    activities: thirddestinationactivities,
    subactivities: thirddestinationsubactivities,
    subresturants: thirddestinationsubresturants,
    //popup box lai ho yai yo
    popuptext: "Coool",
    price: "Hi",
    bestvisit: "hi",
    Measures: "hi"
  ),
  // Destination(
  //   imageUrl: 'assets/images/saopaulo.jpg',
  //   city: 'Sao Paulo',
  //   country: 'Brazil',
  //   localtionUrl:'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
  //   description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
  //   activities: activities,
  //   subactivities: subactivities,
  // ),
  // Destination(
  //   imageUrl: 'assets/images/newyork.jpg',
  //   city: 'New York City',
  //   country: 'United States',
  //   description: 'Visit New York for an amazing and unforgettable adventure.',
  //   localtionUrl:'https://goo.gl/maps/9fgYuZ6aUaKjm57n9',
  //   activities: activities,
  //   subactivities: subactivities,
  // ),
];
