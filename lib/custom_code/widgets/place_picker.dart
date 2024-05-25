// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

class PlacePicker extends StatefulWidget {
  const PlacePicker({
    super.key,
    this.width,
    this.height,
    required this.onLocationSelect,
  });

  final double? width;
  final double? height;
  final Future Function(String? address, double? lat, double? long)
      onLocationSelect;

  @override
  State<PlacePicker> createState() => _PlacePickerState();
}

class _PlacePickerState extends State<PlacePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLocationPicker(
          selectLocationButtonText: 'انتخاب',
          mapLanguage: 'fa',
          searchBarBackgroundColor: Colors.white,
          initZoom: 11,
          minZoomLevel: 5,
          maxZoomLevel: 16,
          trackMyPosition: true,
          onPicked: (pickedData) {
            widget.onLocationSelect(pickedData.address,
                pickedData.latLong.latitude, pickedData.latLong.longitude);
          }),
    );
  }
}
