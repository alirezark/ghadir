// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<TeammateStruct> toTeammateDataType(
  String fullName,
  String? relation,
  String? mobile,
  String? gender,
  String? isAdult,
) async {
  // Add your function code here!

  Relation? _relation;
  if (relation != null) {
    _relation = relation == "همکار" ? Relation.colleague : Relation.family;
  }

  Gender? _gender;
  if (gender != null) {
    _gender = gender == "خانم" ? Gender.female : Gender.male;
  }

  bool? _isAdult;
  if (isAdult != null) {
    _isAdult = isAdult == "بزرگسال";
  }

  return TeammateStruct(
      fullName: fullName,
      relation: _relation,
      gender: _gender,
      isAdult: _isAdult,
      mobile: mobile);
}
