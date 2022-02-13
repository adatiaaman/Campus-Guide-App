import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          'Fests',
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
                    subtitle: const Text('Technical'),
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
                    title: Text(
                      'Advitiya',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                    subtitle: const Text('Cultural'),
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
                    title: Text(
                      'Aarohan',
                      style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(color: Colors.black87)),
                    ),
                    subtitle: const Text('Sports'),
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
          ],
        ),
      ),
    );
  }
}
