class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ExampleScreen(),
        ),
      ),
    );
  }
}

void main() async {
  await group(
    'This is a Flutter test group',
    [
      testWidgets(
        'Simple success',
        MyApp(),
        (controller) async {
          await expect(find.text('0'), findsOneWidget, hints: [
            PossibleHint(findsNothing, 'There should be a Text widget that says "0" after the first build.'),
          ]);
          await controller.tap(find.byType(RaisedButton));
          await controller.pump(Duration(milliseconds: 1));
          await expect(find.text('1'), findsOneWidget, hints: [
            PossibleHint(findsNothing, 'There should be a Text widget that says "1" after the button is pressed.'),
          ]);
        },
      ),
    ],
    reporter: (results) {
      _result(
        !results.any((r) => !r.success),
        results.map((r) => r.messages ?? []).expand((i) => i).toList(),
      );
    },
  );
}
