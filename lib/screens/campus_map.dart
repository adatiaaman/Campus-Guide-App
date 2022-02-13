// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'package:validators/validators.dart' as validator;
class CampusMap extends StatefulWidget {
  const CampusMap({Key? key}) : super(key: key);

  @override
  _CampusMapState createState() => _CampusMapState();
}

class _CampusMapState extends State<CampusMap> {
  late GoogleMapController _googleMapController;
  final CameraPosition _initialPosition = const CameraPosition(
      target: LatLng(30.971119484705394, 76.47316641478976), zoom: 15.0);

  Map<MarkerId, Marker> markers =
      <MarkerId, Marker>{}; // CLASS MEMBER, MAP OF MARKS

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

// void _add() {
//     var markerIdVal = MyWayToGenerateId();
//     final MarkerId markerId = MarkerId(markerIdVal);

//     // creating a new MARKER
//     final Marker marker = Marker(
//       markerId: markerId,
//       position: LatLng(
//         center.latitude + sin(_markerIdCounter * pi / 6.0) / 20.0,
//         center.longitude + cos(_markerIdCounter * pi / 6.0) / 20.0,
//       ),
//       infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
//       onTap: () {
//         _onMarkerTapped(markerId);
//       },
//     );

//     setState(() {
//       // adding a new marker to map
//       markers[markerId] = marker;
//     });
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Campus Map',
          style: GoogleFonts.ubuntu(
              textStyle: const TextStyle(color: Colors.black87)),
        ),
        // onPressed: () {
        //   Navigator.pop(context);
        // }
        backgroundColor: Colors.limeAccent[400],
      ),
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        myLocationButtonEnabled: true,
        // markers:Set<Marker>.of(),

        myLocationEnabled: true,
        zoomGesturesEnabled: true,
        zoomControlsEnabled: true,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          setState(() {
            _googleMapController = controller;
          });
        },
        // onMapCreated: (controller) => _googleMapController = controller,
        // onTap: (coordinate) {
        //   _googleMapController
        //       .animateCamera(CameraUpdate.newLatLng(coordinate));
        // },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 85),
        child: FloatingActionButton(
          // backgroundColor: Colors.limeAccent[400],
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.black,
          onPressed: () => _googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(_initialPosition),
          ),
          child: const Icon(Icons.center_focus_strong),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
