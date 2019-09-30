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
          await expect(find.text('Some text!'), findsOneWidget);
        },
      ),
    ],
    reporter: (results) {
      _result(!results.any((r) => !r.success));
    },
  );
}
