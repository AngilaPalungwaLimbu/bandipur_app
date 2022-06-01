import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            ),
            
          ),
        )
      ],
    );
  }
}