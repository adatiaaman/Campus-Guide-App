import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PlacesVisit extends StatefulWidget {
  PlacesVisit({Key? key}) : super(key: key);

  @override
  _PlacesVisitState createState() => _PlacesVisitState();
}

class _PlacesVisitState extends State<PlacesVisit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Places to visit nearby',
          style: GoogleFonts.ubuntu(
              textStyle: const TextStyle(color: Colors.black87)),
        ),
        backgroundColor: Colors.limeAccent[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Ropar',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        onPressed: () async {
                          final String url =
                              'https://www.tripadvisor.in/Attractions-g2289067-Activities-Rupnagar_Rupnagarr_District_Punjab.html';

                          if (await canLaunch(url)) {
                            await launch(
                              url,
                              forceSafariVC: false,
                              // enableJavaScript: true,
                              // forceWebView: true
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: const Icon(Icons.open_in_new),
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
                    title: Text(
                      'Chandigarh',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        onPressed: () async {
                          final String url =
                              'https://www.tripadvisor.in/Attractions-g297596-Activities-Chandigarh.html';

                          if (await canLaunch(url)) {
                            await launch(
                              url,
                              forceSafariVC: false,
                              // enableJavaScript: true,
                              // forceWebView: true
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: const Icon(Icons.open_in_new),
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
                    title: Text(
                      'Mohali',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        onPressed: () async {
                          final String url =
                              'https://www.tripadvisor.in/Attractions-g1584804-Activities-Mohali_Mohali_District_Punjab.html';
                          if (await canLaunch(url)) {
                            await launch(
                              url,
                              forceSafariVC: false,
                              // enableJavaScript: true,
                              // forceWebView: true
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: const Icon(Icons.open_in_new),
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
                    title: Text(
                      'Others',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        onPressed: () async {
                          final String url =
                              'https://www.tripadvisor.in/Attractions-g297663-Activities-Punjab.html';
                          if (await canLaunch(url)) {
                            await launch(
                              url,
                              forceSafariVC: false,
                              // enableJavaScript: true,
                              // forceWebView: true
                            );
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: const Icon(Icons.open_in_new),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
