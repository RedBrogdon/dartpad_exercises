#!/bin/bash
set -e

cat ../solution.dart ../test.dart > main.dart

echo '\n\nvoid _result(bool success, [List<String> messages]) => print(success);\n\n' &>> main.dart
