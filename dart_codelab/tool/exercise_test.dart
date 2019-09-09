import 'package:test/test.dart';
import 'combined.dart' as combined;

void main() {
  test('Exercise runs correctly', () {
    combined.main();
    expect(combined.lastSuccess, true);
  });
}