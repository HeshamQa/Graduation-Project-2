import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../controller/GeoLocator.dart';
import '../Static/SizeConfig.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({super.key});

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  @override
  void initState() {
    determinePosition();
    super.initState();
  }

  List<Marker> marker = [
    const Marker(
      markerId: MarkerId('Irbid'),
      position: LatLng(32.5556, 35.8498),

    ),
    const Marker(
      markerId: MarkerId('Amman'),
      position: LatLng(31.9632, 35.9306),
      infoWindow: InfoWindow(title: "Production",snippet: ""),
    ),
    const Marker(
      markerId: MarkerId('Zarqa'),
      position: LatLng(32.0836, 36.1058),
    ),
    const Marker(
        markerId: MarkerId('Aqaba'),
      position: LatLng(29.5319, 35.0061),
    ),
    const Marker(
      markerId: MarkerId('Madaba'),
      position: LatLng(31.7188, 35.7937),
    ),
    const Marker(
      markerId: MarkerId('Karak'),
      position: LatLng(31.1800, 35.7047),
    ),
    const Marker(
      markerId: MarkerId("Ma'an"),
      position: LatLng(30.1920, 35.7361),
    ),
  ];
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.063287, 36.240675),
    zoom: 7.8,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(375),
      child: GoogleMap(
        cameraTargetBounds: CameraTargetBounds(
          LatLngBounds(
            southwest: const LatLng(29.0000,34.5000),
            northeast: const LatLng(33.5000,39.3000),
          ),
        ),
        zoomControlsEnabled: true,
        markers: marker.toSet(),
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        onTap: (argument) {},
      ),
    );
  }
}
