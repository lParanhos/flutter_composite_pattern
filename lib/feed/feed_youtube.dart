import 'package:flutter/material.dart';
import 'package:flutter_composite_pattern/feed/feed.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FeedYoutube extends Feed {
  final String text;
  final String videoId;
  final YoutubePlayerController _controller;

  FeedYoutube({
    @required this.text,
    @required this.videoId,
  })  : _controller = YoutubePlayerController(
          initialVideoId: videoId,
          flags: YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
        super(text: text);

  @override
  Widget renderContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
        super.renderContent(),
      ],
    );
  }
}
