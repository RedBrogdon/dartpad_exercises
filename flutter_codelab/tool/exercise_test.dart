import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'combined.dart' as combined;

// void main() async {
//   try {
// 	  await combined.main();
//     if (combined.lastSuccess) {
//       print('Success!');
//     	exit(0);
//     }
//   } catch (ex) {
//     print('Exception while running test: $ex');
//   }

//   print('Failure!');
//   exit(1);
// }

void main() {
  test('Exercise solution and test run correctly when combined', () async {
    await combined.main();
    expect(combined.lastSuccess, true);
  });
}