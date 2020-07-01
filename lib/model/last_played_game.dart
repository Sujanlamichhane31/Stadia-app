import 'package:stadiaapp/styleguide/image_asset.dart';

class LastPlayedGame {
  final String name;
  final int hoursPlayed;
  final String imagePath;
  final double gameProgress;

  LastPlayedGame({this.name, this.hoursPlayed, this.imagePath, this.gameProgress});

}

final lastPlayedGames=[
  LastPlayedGame(name: "God Of War", hoursPlayed: 20, gameProgress: 0.2, imagePath: game_god),
  LastPlayedGame(name: "GTA", hoursPlayed: 10, gameProgress: 0.35, imagePath: game_gta),
  LastPlayedGame(name: "Prince of Persia", hoursPlayed: 20, gameProgress: 0.5, imagePath: game_prince),
  LastPlayedGame(name: "Mario", hoursPlayed: 2, gameProgress: 0.70, imagePath: game_mario),
  LastPlayedGame(name: "PUBG", hoursPlayed: 3, gameProgress: 0.6, imagePath: game_pubg),
];


final popularWithFriends=[
   game_mad, game_pubg, game_gta, game_mini, game_gta, game_mario
];