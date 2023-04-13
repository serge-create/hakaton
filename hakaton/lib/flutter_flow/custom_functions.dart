import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

bool newCustomFunction(String phone) {
  // check if string lenght is 12
  return phone.length == 12;
}

bool photoisempty(String image) {
  // check if image is empty
  return image == null || image.isEmpty;
}

bool stringisempty(String str) {
  // check if  str is empty
  // check if string is empty
  return str == null || str.isEmpty;
}

String changetextonbutton(
  bool isDriver,
  bool isPassenger,
) {
  if (isDriver)
    return "Создать поездку";
  else if (isPassenger)
    return "Найти поездку";
  else
    return "Выберите действие";
}

bool ifMainButtoIsActive(
  bool isDriver,
  bool isPassenger,
  String from,
  String to,
) {
  return (isDriver || isPassenger) && !from.isEmpty && !to.isEmpty;
}

bool checkdate(DateTime? dt) {
  return dt != null;
}

bool checkIfCarValid(
  String photo,
  String mark,
  String model,
  String regnumber,
) {
  return !photo.isEmpty &&
      !mark.isEmpty &&
      !model.isEmpty &&
      !regnumber.isEmpty;
}

bool checkJoinButton(
  DocumentReference user,
  DocumentReference driver,
  List<DocumentReference> passengers,
) {
  return user != driver && !passengers.contains(user);
}
