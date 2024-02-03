import 'package:flutter/material.dart';

const kStyleHeading_1 = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);
const kStyleHeading_2 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: Colors.white,
);

const kStyleBottomHeading = TextStyle(
    fontSize: 30, fontWeight: FontWeight.w500, color: Colors.lightBlueAccent);

const kInputDecoration = InputDecoration(
    hintText: 'Add task',
    hintStyle: TextStyle(color: Colors.grey),
    fillColor: Colors.lightBlueAccent,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1)));

const kConatinerDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
  color: Colors.white,
);
