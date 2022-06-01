import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('Location'),
        )
      ],
    );
  }
}