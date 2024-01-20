// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../controller/geolocator.dart';
import '../../controller/provider/crops_provider.dart';
import '../../generated/l10n.dart';
import '../../models/dropdown_model.dart';
import '../Static/SizeConfig.dart';
import 'CustomRadioButton.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({super.key});

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}
String amman='0';
String irbid='0';
String mafraq='0';
String maan='0';
String zarqa='0';
String karak='0';
String madaba='0';
String aqaba='0';
class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  Future<void> getCrops() async {
    amman = await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Amman", gender!, dropdownlist[2].value);
    irbid =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Irbid", gender!, dropdownlist[2].value);
    mafraq =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Mafraq", gender!, dropdownlist[2].value);
    maan = await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Ma'an", gender!, dropdownlist[2].value);
    zarqa =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Zarqa", gender!, dropdownlist[2].value);
    karak =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Karak", gender!, dropdownlist[2].value);
    madaba =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Madaba", gender!, dropdownlist[2].value);
    aqaba =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Aqaba", gender!, dropdownlist[2].value);
    setState(() {
    });
  }
  @override
  void initState() {
    getCrops();
    determinePosition();
    super.initState();
  }


  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.063287, 36.240675),
    zoom: 7.8,
  );
  @override
  Widget build(BuildContext context) {
    List<Marker> marker = [
    Marker(
      markerId: MarkerId(S.of(context).Irbid),
      position: const LatLng(32.5556, 35.8498),
      infoWindow: InfoWindow(title: S.of(context).Production,snippet: "$irbid ${S.of(context).Dunum}"),
    ),
    Marker(
      markerId: MarkerId(S.of(context).Amman),
      position: const LatLng(31.9632, 35.9306),
      infoWindow: InfoWindow(title: S.of(context).Production,snippet: "$amman ${S.of(context).Dunum}"),
    ),
    Marker(
      markerId: MarkerId(S.of(context).Zarqa),
      position: const LatLng(32.0836, 36.1058),
      infoWindow: InfoWindow(title: S.of(context).Production,snippet: "$zarqa ${S.of(context).Dunum}"),
    ),
    Marker(
      markerId: MarkerId(S.of(context).Aqaba),
      position: const LatLng(29.5319, 35.0061),
      infoWindow: InfoWindow(title: S.of(context).Production,snippet: "$aqaba ${S.of(context).Dunum}"),
    ),
    Marker(
      markerId: MarkerId(S.of(context).Madaba),
      position: const LatLng(31.7188, 35.7937),
      infoWindow: InfoWindow(title: S.of(context).Production,snippet: "$madaba ${S.of(context).Dunum}"),
    ),
    Marker(
      markerId: MarkerId(S.of(context).Karak),
      position: const LatLng(31.1800, 35.7047),
      infoWindow: InfoWindow(title: S.of(context).Production,snippet: "$karak ${S.of(context).Dunum}"),
    ),
    Marker(
      markerId: MarkerId(S.of(context).Maan),
      position: const LatLng(30.1920, 35.7361),
      infoWindow: InfoWindow(title: S.of(context).Production,snippet: "$maan ${S.of(context).Dunum}"),
    ),
  ];
    return SizedBox(
      width: getProportionateScreenWidth(375),
      child: GoogleMap(
        cameraTargetBounds: CameraTargetBounds(
          LatLngBounds(
            southwest: const LatLng(29.375534, 34.886953),
            northeast: const LatLng(33.176641, 37.336934),
          ),
        ),
        zoomControlsEnabled: true,
        markers: marker.toSet(),
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        onTap: (argument) {
          marker.add(Marker(
              markerId: const MarkerId('0'),
              position: LatLng(argument.latitude, argument.longitude)));
          setState(() {});
        },
      ),
    );
  }
}
