import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_composite_pattern/feed/ifeed.dart';

class FeedAdversiting implements IFeed {
  @override
  Widget render() {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 100,
      child: renderContent(),
    );
  }

  @override
  Widget renderBottom() {
    // TODO: implement renderBottom
    throw UnimplementedError();
  }

  @override
  Widget renderContent() {
    return Center(
      child: Text(
        'Propaganda chata',
        textAlign: TextAlign.center,
      ),
    );
  }
}
