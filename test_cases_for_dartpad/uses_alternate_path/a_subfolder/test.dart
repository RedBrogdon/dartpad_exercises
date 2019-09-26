void main() {
  try {
    if (empower(2, 3) == '8') {
      _result(true, ['Well done!']);
    } else {
      _result(false, ['Not quite right. Try again!']);
    }
  } catch (ex) {
    _result(false, ['There was an exception!']);
  }
}
