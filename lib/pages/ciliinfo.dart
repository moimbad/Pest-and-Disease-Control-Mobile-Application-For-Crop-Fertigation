import 'package:flutter/material.dart';
import 'package:pestanddisease1/pages/cilisimtom.dart';
import './displayciliall.dart';
class HairDisplayPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Cili ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Plantation type:Fertigation',
                  style: TextStyle(
                    color: Colors.red[500],
                  ),
                ),

              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Center(
        child: ElevatedButton(
          child: Text('Disease Info'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DisplayPage5(symptoms)),
            );
          },
        ),
      ),
    );


    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Teknologi fertigasi merupakan teknik penanaman yang telah '
        'terbukti memberi kesan yang baik pada tanaman sayuran dan'
         ' buah-buahan. Fertigasi adalah gabungan dua perkataan Inggeris'
        ' iaitu fertilizer dan irrigation  Dalam sistem ini, pembajaan dan'
          'pengairan dilakukan secara serentak. . Sistem fertigasi juga ialah'
            'satu kaedah tanaman alternatif bagi mengelakkan penyakit'
            ' bawaan tanah (soil borne disease) seperti pitium, di samping'
          ' meningkatkan hasil tanaman. Penyakit bawaan tanah seperti'
          ' pitium dan fusarium mengurangkan dan merosakkan hasil'
          ' tanaman',
              softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Chili Fertigation INFO',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cili'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/cilifertigasi.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}