void main() {
  try {
    final str = empower(2, 3); 

    if (str == '8') {
      _result(true);
    } else {
      _result(false, ['That\'s not quite right. Keep trying!']);
    }
  } catch (e) {
    _result(false, ['Tried calling `empower(2, 3)`, but received an exception: ${e.runtimeType}']);
  }
}