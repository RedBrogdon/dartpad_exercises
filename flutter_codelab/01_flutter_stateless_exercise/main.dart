import 'package:dartpad_test/dartpad_test.dart';
import 'package:dartpad_flutter_test/dartpad_flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart' hide testWidgets, expect, group;
import 'package:matcher/matcher.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar!'),
      ),
      body: Text('Some text'),
    );
  }
}
