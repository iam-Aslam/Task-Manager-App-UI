//constant hieghts
import 'package:flutter/material.dart';

kHeight(BuildContext context, int divideBy) {
  return SizedBox(height: MediaQuery.of(context).size.height / divideBy);
}

kWidth(BuildContext context, int divideBy) {
  return SizedBox(width: MediaQuery.of(context).size.width / divideBy);
}
