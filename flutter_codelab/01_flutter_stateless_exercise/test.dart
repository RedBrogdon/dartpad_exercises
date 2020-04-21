void main() async {
  await group(
    'This is a Flutter test group',
    [
      testWidgets(
        'Simple success',
        MaterialApp(
          home: ExampleScreen(),
        ),
        (controller) async {
          await expect(
            find.descendant(
              of: find.byType(Center),
              matching: find.byType(Text),
            ),
            findsOneWidget,
          );
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
