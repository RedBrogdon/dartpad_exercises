void main() async {
  await group(
    'This is a DartPad test group',
    [
      test('Simple success', () async {
        await expect(empower(2, 3), '8', hints: [
          PossibleHint('9', 'You switched the order.'),
          PossibleHint(isNull, 'Did you forget to return anything?'),
          PossibleHint(anything, 'That\'s wrong. Keep trying!'),
        ]);
      }),
    ],
    reporter: (results) {
      _result(
        !results.any((r) => !r.success),
        results.map((r) => r.messages ?? []).expand((i) => i).toList(),
      );
    },
  );
}
