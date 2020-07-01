import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stadiaapp/common/content_heading_widget.dart';
import 'package:stadiaapp/common/last_played_game_tile_widget.dart';
import 'package:stadiaapp/common/rounded_image_widget.dart';
import 'package:stadiaapp/model/friends.dart';
import 'package:stadiaapp/model/last_played_game.dart';
import 'package:stadiaapp/pages/second_home_page.dart';
import 'package:stadiaapp/styleguide/Colors.dart';
import 'package:stadiaapp/styleguide/image_asset.dart';
import 'package:stadiaapp/styleguide/text_styles.dart';

class LandingPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.4;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(screenWidth * 0.4, 10),
            child: Transform.rotate(
              angle: -0.1,
              child: SvgPicture.asset(
                logo,
                height: logoHeight,
                color: logoTintColor,
                width: screenWidth,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Icon(
                          Icons.menu,
                          color: primaryTextColor,
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context)=>SecondaryHomePage()));
                        },
                      ),
                      Icon(
                        Icons.search,
                        color: primaryTextColor,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: <Widget>[
                            RoundedImageWidget(
                              imagePath: Player,
                              ranking: 39,
                              showRanking: true,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Hello',
                                      style: userNameTextStyle,
                                    ),
                                    TextSpan(text: "\n"),
                                    TextSpan(
                                        text: "Marshmellow",
                                        style: userNameTextStyle),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 16.0, bottom: 16, top: 16),
                        child: Material(
                          elevation: 4,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                bottom: 32.0,
                                top: 16.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Hours Played",
                                      style: hoursPlayedLabelTextStyle,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "297 Hours",
                                  style: hoursPlayedTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ContentHeadingWidget(heading: "Last Played Games"),
                      for (var i = 0; i < lastPlayedGames.length; i++)
                        LastPlayedGameTile(
                          lastPlayedGame: lastPlayedGames[i],
                          screenWidth: screenWidth,
                          gameprogress: lastPlayedGames[i].gameProgress,
                        ),
                      ContentHeadingWidget(heading: "Friends"),

                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: <Widget>[
                        for (var i = 0; i < friends.length; i++)
                          RoundedImageWidget(
                            imagePath: friends[i].imagePath,
                            isOnline: friends[i].isOnline,
                            name: friends[i].name,
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
