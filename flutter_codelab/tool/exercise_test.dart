import 'package:flutter_test/flutter_test.dart';
import 'combined.dart' as combined;

void main() {
  test('Exercise solution and test run correctly when combined', () async {
    await combined.main();

    print('Result: ${combined.lastSuccess}, ${combined.lastMessages}');
    expect(combined.lastSuccess, true);
  });
}