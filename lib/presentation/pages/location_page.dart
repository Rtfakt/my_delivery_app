
import 'package:my_delivery_app/presentation/widgets/location_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationPage extends StatelessWidget {
  static const String routeName = '/location';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const LocationPage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: [
        Container(
        height: MediaQuery.of(context).size.height,
    width: double.infinity,
    child: FlutterMap(
    options: MapOptions(
    center: LatLng(33.0, 55.0

    ),
    zoom: 12.0,
    ),
    layers: [
    TileLayerOptions(
    urlTemplate:
    "https://api.mapbox.com/styles/v1/rtfakt/cl1kluznv000914msd17zoev3/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicnRmYWt0IiwiYSI6ImNsMWtrNm1hMzAxNmszY28zeTZldHh1ajcifQ.UwBzWrSpJWC_9G2wh-YyGg",
    additionalOptions: {
    'accessToken':
    'pk.eyJ1IjoicnRmYWt0IiwiYSI6ImNsMWtrNm1hMzAxNmszY28zeTZldHh1ajcifQ.UwBzWrSpJWC_9G2wh-YyGg',
    'id': 'mapbox.mapbox-streets-v8'
    },
    )
    ,
    /*MarkerLayerOptions(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(55.7, 37.6),
                    builder: (ctx) =>
                        Container(
                          child: FlutterLogo(),
                        ),
                  ),
                ],
              ),*/
    ]
    ),),



],),);

}
}
