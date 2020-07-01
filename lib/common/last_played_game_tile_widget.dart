import 'package:flutter/material.dart';
import 'package:stadiaapp/model/last_played_game.dart';
import 'package:stadiaapp/styleguide/text_styles.dart';

import 'game_progess_widget.dart';


class LastPlayedGameTile extends StatelessWidget {
  final LastPlayedGame lastPlayedGame;
  final double screenWidth;
  final double gameprogress;

  const LastPlayedGameTile({Key key, this.lastPlayedGame, this.screenWidth, this.gameprogress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(
                        lastPlayedGame.imagePath,
                        height: 60,
                        width: 45,
                        fit: BoxFit.cover,),
                    ),
                    Positioned(
                        left:8,
                        right:8, top: 8,
                        bottom:8,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(Icons.play_arrow,color: Colors.red,),
                        ),
                    ),
                  ],

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: RichText(
                    text: TextSpan(
                      children:[
                        TextSpan(text: lastPlayedGame.name, style: headingTwoTextStyle),
                        TextSpan(text: "\n"),
                        TextSpan(text:"${lastPlayedGame.hoursPlayed} hours played", style: bodyTextStyle ),
                        ]
                    ),
                  ),
                ),
              ],
            ),
          ),

         Expanded(child: GameProgressWidget(screenWidth: screenWidth, gameProgress: gameprogress),),
        ],
      ),
    );
  }
}
