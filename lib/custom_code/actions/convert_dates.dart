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

import 'package:intl/intl.dart';
import 'package:shamsi_date/shamsi_date.dart';

String formatTime(String time) {
  // Define the input format
  DateFormat inputFormat = DateFormat("HH:mm:ss.SSS");

  // Parse the time string
  DateTime dateTime = inputFormat.parse(time);

  // Define the output format
  DateFormat outputFormat = DateFormat("HH:mm");

  // Format the parsed DateTime object to the desired output format
  String formattedTime = outputFormat.format(dateTime);

  return formattedTime;
}

Future<List<LocalTimeStruct>> convertDates(List<LocalTimeStruct> data) async {
  // Add your function code here!
  // Create a new list to store the converted dates
  List<LocalTimeStruct> convertedDates = [];

  // Loop through each object in the data list
  for (var i = 0; i < data.length; i++) {
    // Get the from and to dates from the object
    String date = data[i].date;
    String from = data[i].from;
    String to = data[i].to;

    // Convert the from and to dates to Jalali date strings
    final dateJalali = Jalali.fromDateTime(DateTime.parse(date)).formatter;
    final fromString = formatTime(from);
    final toString = formatTime(to);
    String dateString = '${dateJalali.wN} ${dateJalali.d} ${dateJalali.mN}';

    String timeString = 'از ${fromString} تا ${toString} ';

    print(dateString);

    print(timeString);

    // Create a new object with the converted dates and add it to the convertedDates list
    LocalTimeStruct convertedDate = LocalTimeStruct(
        from: from,
        to: to,
        id: data[i].id,
        dateString: dateString,
        timeString: timeString,
        date: data[i].date);
    convertedDates.add(convertedDate);
  }
  // Return the convertedDates list
  return convertedDates;
}
