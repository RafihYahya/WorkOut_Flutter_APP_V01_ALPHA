import 'package:flutter/material.dart';

class Description {
  final Image? image;
  final String title;
  final String desc;
  final String danger;

  Description(
      {this.image,
      required this.title,
      required this.desc,
      required this.danger});
}
