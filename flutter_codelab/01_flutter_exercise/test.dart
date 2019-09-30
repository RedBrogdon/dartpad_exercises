void main() async {
  await testGroup(
    'This is a Flutter test group',
    [
      testWidgets(
        'Simple success',
        MaterialApp(
          home: ExampleScreen(),
        ),
        (controller) async {
          await controller.tap(find.byType(RaisedButton));
          await controller.pump(Duration(seconds: 1));
          await expect(find.text('0'), findsOneWidget);
        },
      ),
    ],
    reporter: (results) {
      _result(!results.any((r) => !r.success));
    },
  );
}
