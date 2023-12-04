import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/View/Screen/HomeScreen/components/drawer.dart';
import '../../../Utils/Widget/NavBar.dart';
import '../../../controller/GeoLocator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    determinePosition();
    super.initState();
  }
  List<Marker> marker=[];
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(32.53522628114934, 35.86376075756249),
    zoom: 10,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    // String page='';

    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: NavBar(),
        body: SizedBox(
          width: getProportionateScreenWidth(375),
          child: GoogleMap(
            markers: marker.toSet(),
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            onTap: (argument) {
              marker.add(Marker(markerId: const MarkerId('0'),position: LatLng(argument.latitude, argument.longitude)));
              setState(() {});
            },
          ),
        ),
    );
  }
}
