import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  List categories = [
    {'image': 'images/hotel.png', 'text': 'Hotel'},
    {'image': 'images/restaurant.png', 'text': 'Restaurants'},
    {'image': 'images/taxi.png', 'text': 'Taxi'},
    {'image': 'images/bank.png', 'text': 'Bank'},
    {'image': 'images/event.png', 'text': 'events'}
  ];

  List slider = [
    {'images': 'images/1.jpg'},
    {'images': 'images/2.jpg'},
    {'images': 'images/3.jpg'},
    {'images': 'images/4.jpg'}
  ];

  List activities=[
    {
      'image':'images/hike.jpg',
      'title':'Cave'
    },
     {
      'image':'images/temples.jpg',
      'title':'Cave'
    },
     {
      'image':'images/cave.jpg',
      'title':'Cave'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
          child: Text(
            'Explore Bandipur',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: slider.length,
                itemBuilder: (context,index) {
                  return CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      viewportFraction: 0.8,
                      aspectRatio: 1.5,
                      enlargeCenterPage: true,
                    ),
                    items: [
                      Image.asset(slider[index]['images'],fit: BoxFit.cover,),
                    ],
                  );
                })),
        Container(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
          ),
          height: 110,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 6, left: 7, right: 6),
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
        const Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text('Popular Activities',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(color: Colors.blue[50]),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount:activities.length,
              itemBuilder:(context,index){
                return Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      activities[index]['image'],
                    )),
                ListTile(
                  title: Text(activities[index]['title']),
                  subtitle: Text("⭐⭐⭐⭐⭐  5.0  (119 reviews)"),
                )
              ],
            );
              } 
            )
          ),
        )
      ]),
    );
  }
}
