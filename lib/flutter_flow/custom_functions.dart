import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

String relationToText(Relation? relation) {
  return relation == Relation.colleague ? "همکار" : "خانواده";
}

String toTimeString(int time) {
  num minutes = (time / 60).floor();
  num seconds = time % 60;
  return ' $minutes:${seconds.toString().padLeft(2, '0')} ';
}

String? newCustomFunction() {
  // get from and to datetime and return jalali formated string
  final now = DateTime.now();
  final jalaliFormatter = DateFormat('yyyy/MM/dd', 'fa_IR');
  final jalaliFrom = jalaliFormatter.format(now);
  final jalaliTo = jalaliFormatter.format(now.add(Duration(days: 7)));
  return '$jalaliFrom - $jalaliTo';
}
