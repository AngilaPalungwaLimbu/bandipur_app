import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List categories = [
    {"image": "images/hotel.png", "text": "Hotel"},
    {"image": "images/restaurant.png", "text": "Restaurants"},
    {"image": "images/taxi.png", "text": "Taxi"},
    {"image": "images/bank.png", "text": "Bank"},
    {"image": "images/event.png", "text": "Events"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
          child: Text(
            'Explore Bandipur',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
            height: 230,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                viewportFraction: 0.8,
                aspectRatio: 1.5,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset(
                  'images/1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/4.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            )),
        Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 1,
          ),
          height: 110,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                  child: Column(
                    children: [
                      Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue[50]),
                          child: Image.asset(categories[index]['image'])),
                      Text(categories[index]['text'])
                    ],
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,),
          child: Text('Popular Activities',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Container(
            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            decoration: BoxDecoration(
              color: Colors.blue[50]
            ),
           child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('images/hike.jpg',)),
                ListTile(
                  title:Text('Trekking in Bandipur'),
                  subtitle: Text("⭐⭐⭐⭐⭐  5.0  (119 reviews)"),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
