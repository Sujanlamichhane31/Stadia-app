import 'package:stadiaapp/styleguide/image_asset.dart';

class Friend{
  final String name;
  final String imagePath;
  final bool isOnline;

  const Friend({this.name, this.imagePath, this.isOnline});

}

final friends=[
  Friend(name: "Aabhash", imagePath: friend_bale, isOnline:true),
  Friend(name: "Bibek", imagePath: friend_selena, isOnline:false),
  Friend(name: "Sujan", imagePath: friend_concert, isOnline:true),
  Friend(name: "Kushal", imagePath: friend_maha, isOnline:false),

];