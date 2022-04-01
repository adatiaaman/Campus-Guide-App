import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FestDet extends StatefulWidget {
  const FestDet({Key? key}) : super(key: key);

  @override
  _FestDetState createState() => _FestDetState();
}

class _FestDetState extends State<FestDet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IIT Ropar Student Activities',
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
                      'Zeitgeist',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                    subtitle: const Text('Technical Fest'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      // TextButton(
                      //   child: const Text('Open'),
                      //   onPressed: () {/* ... */},
                      // ),
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
                      'Advitiya',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                    subtitle: const Text('Cultural Fest'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      // TextButton(
                      //   child: const Text('Open'),
                      //   onPressed: () {/* ... */},
                      // ),
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
                      'Aarohan',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                    subtitle: const Text('Sports Fest'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      // IconButton(
                      //   onPressed: () async {
                      //     final String url =
                      //         'https://www.iitrpr.ac.in/student-council/bosa.php';

                      //     if (await canLaunch(url)) {
                      //       await launch(
                      //         url,
                      //         forceSafariVC: false,
                      //         // enableJavaScript: true,
                      //         // forceWebView: true
                      //       );
                      //     } else {
                      //       throw 'Could not launch $url';
                      //     }
                      //   },
                      //   icon: const Icon(Icons.open_in_new),
                      // ),
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
                      'IYSC',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                    subtitle: const Text('Inter Year Sports Competition'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      // TextButton(
                      //   child: const Text('Open'),
                      //   onPressed: () {/* ... */},
                      // ),
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
                      'ISMP',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                    subtitle: const Text('Mentorship for freshers'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        onPressed: () async {
                          final String url = 'https://www.iitrpr.ac.in/ismp/';

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
                      'Student Activites',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                    subtitle: const Text('Clubs'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        onPressed: () async {
                          final String url =
                              'https://www.iitrpr.ac.in/student-council/index.php';

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
