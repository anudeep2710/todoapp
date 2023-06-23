import "package:flutter/material.dart";
import 'intro.dart';

void main() {
  runApp( MaterialApp(debugShowCheckedModeBanner: false,
      home:introduction(),
      theme: ThemeData(primarySwatch: Colors.yellow)
  ));
}
