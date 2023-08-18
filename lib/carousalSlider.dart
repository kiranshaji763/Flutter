import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: CaroSlide(),));
}

class CaroSlide extends StatelessWidget{
  const CaroSlide({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CarouselSlider(
        items: List.generate(10, (index) =>
        const Card(
          color: Colors.green,
          child: Center(
            child: Icon(
              Icons.ac_unit,
              size: 40,)),
            )),
        //))
        // Container(
        //   decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: NetworkImage(
        //           "https://images.unsplash.com/photo-1689616977225-bf0ab4ae1ac5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=436&q=80"
        //       )),),),
        // Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         image: NetworkImage(
        //             "https://images.unsplash.com/photo-1689616977225-bf0ab4ae1ac5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=436&q=80"
        //         )),),),
        // Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         image: NetworkImage(
        //             "https://images.unsplash.com/photo-1689616977225-bf0ab4ae1ac5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=436&q=80"
        //         )),),),
        // Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         image: NetworkImage(
        //             "https://images.unsplash.com/photo-1689616977225-bf0ab4ae1ac5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=436&q=80"
        //         )),),),Container(
        //   decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         image: NetworkImage(
        //             "https://images.unsplash.com/photo-1689616977225-bf0ab4ae1ac5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=436&q=80"
        //         )),),),
      //],
      options: CarouselOptions(
        height: 1000,
        aspectRatio: 16/10,
        viewportFraction: .6,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayCurve: Curves.easeOutCubic,
        enlargeCenterPage: true,
        enlargeFactor: .3,
        scrollDirection: Axis.vertical,
      ),
      ),
    );
  }
}