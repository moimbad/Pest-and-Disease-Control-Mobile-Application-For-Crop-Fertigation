import 'package:flutter/material.dart';
import '../data/formal_combination1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';


class DisplayPage6 extends StatefulWidget {
  final List<List<dynamic>> symptoms;

  DisplayPage6(this.symptoms);
  @override
  _DisplayPageState createState() => _DisplayPageState(symptoms);
}

class _DisplayPageState extends State<DisplayPage6> {
  _DisplayPageState(this.symptoms);
  List<List<dynamic>> symptoms;
  var listForCarousel = Iterable<int>.generate(formalCombinations1.length).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          height: MediaQuery.of(context).size.height * 0.8,
          items: listForCarousel.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return     FlipCard(
                  direction: FlipDirection.HORIZONTAL, // default
                  front: Container(
                    child:  Card(
                      child: Container(

                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(formalCombinations1[i]['gambar']),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          child:   Text("\nTap to View more info", textAlign: TextAlign.center,)
                      ),

                    ),

                  ),

                  back: Container(
                    child: Card(child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:40.0, horizontal: 20.0),
                      child: Text(formalCombinations1[i]['description'], style: TextStyle(fontFamily: "Marker"),),
                    )),
                  ),
                );
              },
            );
          }).toList(),
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}