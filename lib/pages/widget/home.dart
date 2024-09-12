import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> images = [
    "https://media.istockphoto.com/id/583809524/photo/alberta-wilderness-near-banff.jpg?s=612x612&w=0&k=20&c=hiI3ib9ibDxAgqEZEH09EO3JOw94v5xh6hzcuXGhO-M=",
    "https://img.freepik.com/free-photo/beautiful-natural-view-landscape_23-2150787996.jpg",
    "https://plus.unsplash.com/premium_photo-1669867124806-f84dd1a9e87c?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmF0dXJlJTIwbGFuZHNjYXBlfGVufDB8fDB8fHww",
    "https://img.freepik.com/free-photo/view-nature-landscape-with-river_23-2150763756.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: CarouselSlider(
          options: CarouselOptions(
              autoPlayInterval: Duration(seconds: 1),
              autoPlay: true,
              height: 200.0),
          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Image.network(
                      i,
                      fit: BoxFit.cover,
                    ));
              },
            );
          }).toList(),
        ));
  }
}
