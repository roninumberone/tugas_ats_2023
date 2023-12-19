import 'package:buah/data.dart';
import 'package:flutter/material.dart';

class detailPage extends StatelessWidget {
  buah buahnya;
  detailPage({super.key, required this.buahnya});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Center(child: Image(image: NetworkImage(buahnya.getImg)))],
        ),
      ),
    );
  }
}
