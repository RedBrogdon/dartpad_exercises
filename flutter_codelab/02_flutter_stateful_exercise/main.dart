import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart' hide testWidgets, expect;
import 'package:dartpad_test/dartpad_test.dart';
import 'package:dartpad_flutter_test/dartpad_flutter_test.dart';
import 'package:matcher/matcher.dart';

class ExampleScreen extends StatefulWidget {
  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$count'),
        RaisedButton(
          onPressed: () {
            
          },
          child: Text('Clicky'),
        ),
      ],
    );
  }
}
