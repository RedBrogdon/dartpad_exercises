import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart' hide testWidgets, expect;
import 'package:dartpad_test/dartpad_test.dart';
import 'package:dartpad_flutter_test/dartpad_flutter_test.dart';
import 'package:matcher/matcher.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar!'),
      ),
      body: Center(
        child: Text('Some text'),
      ),
    );
  }
}
