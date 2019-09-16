void main() async {
  await ui.webOnlyInitializePlatform();
  
  runApp(
    MaterialApp(
      home: ExampleScreen(),
    ),
  );
}
