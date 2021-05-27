import 'package:flutter/material.dart';
import 'package:flutter_composite_pattern/feed/feed_adversiting.dart';
import 'package:flutter_composite_pattern/feed/feed_image.dart';
import 'package:flutter_composite_pattern/feed/feed_youtube.dart';
import 'package:flutter_composite_pattern/feed/ifeed.dart';

import 'feed/feed.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<IFeed> feed = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    feed.add(Feed(text: 'Enviando mensagem de Texto'));
    feed.add(
      FeedImage(
        text: 'Enviando uma imagem',
        url: 'https://nerdhits.com.br/wp-content/uploads/2020/10/vegeta.jpeg',
      ),
    );
    feed.add(FeedAdversiting());
    feed.add(
      FeedYoutube(
        text: 'Youtube Vídeo',
        videoId: 'uCKumn1yF6U',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: feed.length,
        itemBuilder: (context, index) => feed[index].render(),
      ),
    );
  }
}
