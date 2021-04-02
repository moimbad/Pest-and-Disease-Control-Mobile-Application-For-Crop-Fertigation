import 'package:flutter/material.dart';
import '../data/formal_combination1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';


class DisplayPage1 extends StatefulWidget {
  final List<List<dynamic>> symptoms;


  DisplayPage1(this.symptoms);
  @override
  _DisplayPageState createState() => _DisplayPageState(symptoms);
}

class _DisplayPageState extends State<DisplayPage1> {
  _DisplayPageState(this.symptoms);
  List<List<dynamic>> symptoms;

  var listForCarousel = Iterable<int>.generate(formalCombinations1.length).toList();


  @override
  Widget build(BuildContext context) {
    //  itemCount:symptoms.length;
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          height: MediaQuery.of(context).size.height * 0.8,
          items: listForCarousel.map((i) {
            List<List<dynamic>> symptom=[['eaten by larva', 'Round holes', 'wrinkle','no symptoms']];
            List<List<dynamic>> symptom1=[['no symptoms', 'eggs planted', 'S shape', 'no symptoms']];
            List<List<dynamic>> symptom2=[['no symptoms', 'wrinkle', 'mold','no symptoms']];
            var a=symptoms.toString();
            var b =symptom.toString();
            var c =symptom1.toString();
            var d =symptom2.toString();

            if(a == b ) {
              return Builder(
                builder: (BuildContext context) {

                  print("succesfull");//test
                  return
                    FlipCard(
                      direction: FlipDirection.HORIZONTAL, // default
                      front: Container(
                        child:  Card(
                          child: Container(

                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(formalCombinations1[0]['gambar']),

                                fit: BoxFit.fitWidth,
                                alignment: Alignment.topCenter,
                              ),
                            ),

                            //  child:   Text(formalCombinations[0]['symptom'], textAlign: TextAlign.center,)
                          ),
                        ),
                      ),

                      back: Container(
                        child: Card(child: Padding(
                          padding: const EdgeInsets.symmetric(vertical:40.0, horizontal: 20.0),
                          child: Text(formalCombinations1[0]['description'], style: TextStyle(fontFamily: "Marker"),),
                        )),
                      ),
                    );
                },
              );
            }
            else if(a == c )
            {
              return Builder(
                builder: (BuildContext context) {
                  return
                    FlipCard(
                      direction: FlipDirection.HORIZONTAL, // default
                      front: Container(
                        child:  Card(
                          child: Container(

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(formalCombinations1[1]['gambar']),
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
                          child: Text(formalCombinations1[1]['description'], style: TextStyle(fontFamily: "Marker"),),
                        )),
                      ),
                    );
                },
              );
            }
            else if(a == d){

              return Builder(
                builder: (BuildContext context) {
                  return
                    FlipCard(
                      direction: FlipDirection.HORIZONTAL, // default
                      front: Container(
                        child:  Card(
                          child: Container(

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(formalCombinations1[2]['gambar']),
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
                          child: Text(formalCombinations1[2]['description'], style: TextStyle(fontFamily: "Marker"),),
                        )),
                      ),
                    );
                },
              );
            }
            else{
              return
                FlipCard(
                  direction: FlipDirection.HORIZONTAL, // default
                  front: Container(
                    child:  Card(
                      child: Container(

                          child:   Text("There is no such disease", textAlign: TextAlign.center,)
                      ),
                    ),
                  ),
                  back: Container(
                    child: Card(child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:40.0, horizontal: 20.0),
                      child: Text("The symptoms that has been input is not inside the database", textAlign: TextAlign.center,),
                    )),
                  ),
                );
            }


          }).toList(),
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}