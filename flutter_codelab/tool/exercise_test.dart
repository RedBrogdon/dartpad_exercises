import 'dart:io';
import 'combined.dart' as combined;

void main() async {
  try {
	  await combined.main();
    if (combined.lastSuccess) {
      print('Success!');
    	exit(0);
    }
  } catch (ex) {
    print('Exception while running test: $ex');
  }

  exit(1);
}