import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_flutter/Instagram.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Instagram(),
    ));
