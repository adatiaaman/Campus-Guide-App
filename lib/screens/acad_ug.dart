import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcadDet extends StatefulWidget {
  const AcadDet({Key? key}) : super(key: key);

  @override
  State<AcadDet> createState() => _AcadDetState();
}

class _AcadDetState extends State<AcadDet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Academics',
          style: GoogleFonts.ubuntu(
              textStyle: const TextStyle(color: Colors.black87)),
        ),
        backgroundColor: Colors.limeAccent[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
