class Hotel {
  String imageUrl;
  String name;
  String visitime;
  String walkingtime;
  String link;

  Hotel({
    this.imageUrl,
    this.name,
    this.visitime,
    this.walkingtime,
    this.link,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hike.jpg',
    name: 'Nagarkot Hiking Route',
    visitime: 'Best time to visit: Summer',
    walkingtime: 'Walking Time: 3 hours 46 minutes',
    link: 'https://www.google.com/maps/dir//nagarkot+hiking+route/@27.7254032,85.3868714,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x39eb069982d28f3d:0xa82956475d7dc5dd!2m2!1d85.5278724!2d27.7305368',
  ),
  Hotel(
    imageUrl: 'assets/images/hike1.jpg',
    name: 'Pulchowki Hiking Route',
    visitime: 'Best time to visit: Winter',
    walkingtime: 'Walking Time: 2 hours 31 minutes',
    link: 'https://www.google.com/maps/dir/Phulchowki,+Ryale+45200//@27.6444762,85.2969716,12z/data=!4m8!4m7!1m5!1m1!1s0x39eb11863697fc75:0x3074cdc4c6ad2ae8!2m2!1d85.4055504!2d27.5711026!1m0',
  ),
  // Hotel(
  //   imageUrl: 'assets/images/hotel2.jpg',
  //   name: 'Hotel 2',
  //   visitime: '404 Great St',
  //   walkingtime: '240',
  //   link: 'COme',
  // ),
];
