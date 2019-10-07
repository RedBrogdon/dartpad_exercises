import 'package:flutter_web/material.dart';
import 'package:flutter_web_test/flutter_web_test.dart';
import 'package:flutter_web_ui/ui.dart' as ui;

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

void main() async {
  await ui.webOnlyInitializePlatform()

  runApp(
    MaterialApp(
      home: ExampleScreen(),
    ),
  );
}
