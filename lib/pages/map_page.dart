import 'dart:math';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Page'),
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(35, 38),
          initialZoom: 7,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          // PolygonLayer(
          //   polygons: [
          //     Polygon(
          //       borderStrokeWidth: 2,
          //       points: [
          //         const LatLng(35, 38),
          //         const LatLng(35, 40),
          //         const LatLng(30, 40),
          //         const LatLng(30, 38),
          //       ],
          //       borderColor: Colors.blue,
          //       color: Colors.blue.withOpacity(0.5),
          //     )
          //   ],
          // ),
          PolylineLayer(
            polylines: [
              Polyline(
                points: [
                  const LatLng(35.5, 38.5),
                  const LatLng(35.5, 36.5),
                ],
              ),
            ],
          ),
          CircleLayer(circles: [
            CircleMarker(
                useRadiusInMeter: true,
                point: const LatLng(35.5, 38),
                radius: 10000,
                color: Colors.blue.withOpacity(0.2)),
          ]),
          const MarkerLayer(
            markers: [
              Marker(
                point: LatLng(35, 38),
                child: Icon(
                  Icons.location_pin,
                  color: Colors.red,
                ),
              ),
              Marker(
                point: LatLng(35, 36),
                child: Icon(
                  Icons.location_pin,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<LatLng> latlongs(double initialX, double step, double limit) {
  List<LatLng> result = [];
  for (var i = initialX; i < limit; i = i + step) {
    result.add(LatLng(i, myfunc(i)));
  }
  return result;
}

double myfunc(double x) {
  return 5 * sin(x * pi);
}
