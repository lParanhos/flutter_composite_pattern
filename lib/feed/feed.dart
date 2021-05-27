import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_composite_pattern/feed/ifeed.dart';
import 'package:intl/intl.dart';

class Feed implements IFeed {
  final String text;
  final DateTime date;

  Feed({@required this.text}) : date = DateTime.now();

  @override
  Widget render() {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: renderContent(),
    );
  }

  @override
  Widget renderContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        renderBottom(),
      ],
    );
  }

  @override
  Widget renderBottom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Enviado em ${DateFormat('dd/MM/yyyy').format(date)}',
            style: TextStyle(color: Colors.green),
          ),
        )
      ],
    );
  }
}
