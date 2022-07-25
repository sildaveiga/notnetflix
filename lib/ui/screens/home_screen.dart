import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notnetflix/utils/constant.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: Image.asset('assets/images/netflix_logo_2.png'),
      ),
      body: ListView(
        children: [
          Container(
            height: 500,
            color: Colors.red,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Tendances actuelles',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(height: 5,),
        SizedBox(
          height: 160,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(right: 8),
                width: 110,
                color: Colors.yellow,
                child: Center(
                  child: Text(index.toString()),
                ),
              );
            },
          ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Actuellement au cinéma',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(height: 5,),
        SizedBox(
          height: 320,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(right: 8),
                width: 220,
                color: Colors.blue,
                child: Center(
                  child: Text(index.toString()),
                ),
              );
            },
          ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Ils arrivent bientôt',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(height: 5,),
        SizedBox(
          height: 160,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(right: 8),
                width: 110,
                color: Colors.green,
                child: Center(
                  child: Text(index.toString()),
                ),
              );
            },
          ),
          ),
        ],
      ),
    );
  }
}
