void main() {
  try {
    // throw ("Test throw error in Try Scope");

    // For on RangeError
    // var bbb = ["Hi", 3, 4];
    // print(bbb[10]);

    // For on UnsupportedError
    // List lst_tmp = List.empty(growable: false);
    // lst_tmp.add("test");
  } on RangeError {
    print("RangeError");
  } on UnsupportedError {
    print("Unsupported operation");
  } catch (e, s) {
    print("error: $e \n");
    print("stack: $s \n");
  } finally {
    print("This is finally \n");
  }
}
