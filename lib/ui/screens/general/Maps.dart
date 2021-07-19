import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  @override
  State<Maps> createState() => MapSampleState();
}

class MapSampleState extends State<Maps> {
  late GoogleMapController myMapController;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(27.700769, 85.300140),
    zoom: 15.4746,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        zoomControlsEnabled: false,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (controller) {
          setState(() {
            myMapController = controller;
          });
        },
      ),
    );
  }

  /*Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }*/
}
