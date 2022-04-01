import 'dart:ui';

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iitrpr/screens/acad_ug.dart';
import 'package:iitrpr/screens/campus_map.dart';
import 'package:iitrpr/screens/contact_us.dart';
import 'package:iitrpr/screens/fest_details.dart';
import 'package:iitrpr/screens/places_visit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IIT Ropar Guide',
          style: GoogleFonts.ubuntu(
              textStyle: const TextStyle(color: Colors.black87)),
        ),
        backgroundColor: Colors.limeAccent[400],
      ),
      // pics scroll left, right
      // list view - cards
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  const SizedBox(width: 15.0),
                  Container(
                    width: 260.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/rpr2.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    width: 260.0,
                    // color: Colors.orange,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/rpr3.jfif'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    width: 260.0,
                    // color: Colors.orange,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/rpr4.jfif'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    width: 260.0,
                    // color: Colors.orange,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/rpr5.jfif'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    width: 260.0,
                    // color: Colors.orange,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/rpr6.jfif'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    width: 260.0,
                    // color: Colors.orange,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/rpr7.jfif'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    width: 260.0,
                    // color: Colors.orange,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/rpr8.jfif'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Container(
                    width: 260.0,
                    // color: Colors.orange,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/rpr9.jfif'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                ],
              ),
            ),
            Column(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // scrollDirection: Axis.vertical,
              children: <Widget>[
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.location_on),
                        style: ListTileStyle.list,
                        title: Text(
                          'IIT Ropar Main Campus',
                          style: GoogleFonts.ubuntu(
                              textStyle:
                                  const TextStyle(color: Colors.black87)),
                        ),
                        subtitle: const Text('Google Maps view'),
                        // onTap: ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                              child: const Text('Open'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CampusMap()),
                                );
                              }),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading:
                            const Icon(Icons.shopping_cart), // business_center
                        title: Text(
                          'Marketplace',
                          style: GoogleFonts.ubuntu(
                              textStyle:
                                  const TextStyle(color: Colors.black87)),
                        ),
                        subtitle: const Text('Buy and Sell'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('Open'),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(
                            Icons.restaurant_outlined), // business_center
                        title: Text(
                          'Food Delivery',
                          style: GoogleFonts.ubuntu(
                              textStyle:
                                  const TextStyle(color: Colors.black87)),
                        ),
                        subtitle:
                            const Text('Order Food from Campus Food joints'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('Open'),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.book), // auto_stories
                        title: Text(
                          'Academics',
                          style: GoogleFonts.ubuntu(
                              textStyle:
                                  const TextStyle(color: Colors.black87)),
                        ),
                        subtitle: const Text('UG Information'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('Open'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AcadDet()),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.celebration),
                        title: Text(
                          'IIT Ropar Student Activities',
                          style: GoogleFonts.ubuntu(
                              textStyle:
                                  const TextStyle(color: Colors.black87)),
                        ),
                        subtitle: const Text('Fests, Clubs and ISMP'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('Open'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FestDet()),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.airport_shuttle),
                        title: Text(
                          'Places to visit near by',
                          style: GoogleFonts.ubuntu(
                              textStyle:
                                  const TextStyle(color: Colors.black87)),
                        ),
                        subtitle:
                            const Text('Tourist Places in Ropar and Nearby'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('Open'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlacesVisit()),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.call_rounded),
                        title: Text(
                          'Contact Us',
                          style: GoogleFonts.ubuntu(
                              textStyle:
                                  const TextStyle(color: Colors.black87)),
                        ),
                        subtitle:
                            const Text('Suggestions to make this app better'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('Open'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ContactUs()),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // drawer: Drawer(),
    );
  }
}

// ONPRESSED
// Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => const SecondRoute()),
//   );
