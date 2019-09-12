import 'package:test/test.dart';
import 'combined.dart' as combined;

void main() {
  test('Exercise solution and test run correctly when combined', () async {
    await combined.main();
    expect(combined.lastSuccess, true);
  });
}