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
    link: 'Hello',
  ),
  Hotel(
    imageUrl: 'assets/images/hike1.jpg',
    name: 'Pulchowki hiking route',
    visitime: 'Best time to visit: Winter',
    walkingtime: 'Walking Time: 2 hours 31 minutes',
    link: 'bye',
  ),
  // Hotel(
  //   imageUrl: 'assets/images/hotel2.jpg',
  //   name: 'Hotel 2',
  //   visitime: '404 Great St',
  //   walkingtime: '240',
  //   link: 'COme',
  // ),
];
