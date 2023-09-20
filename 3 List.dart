void main() {
  List<bool> lst_tmp0 = List.empty(growable: true);
  print("lst_tmp0 is $lst_tmp0");
  lst_tmp0.add(true);
  lst_tmp0.add(false);
  print("lst_tmp0 is $lst_tmp0");

  /* This section will be error at .add because growable is false
  List lst_tmp01 = List<bool>.empty(growable: false);
  print("lst_tmp01 is $lst_tmp01");
  lst_tmp01.add(true);
  lst_tmp01.add(false);
  print("lst_tmp01 is $lst_tmp01");
  */

  List lst_tmp02 = List.empty(growable: true);
  print("lst_tmp02 is $lst_tmp02");
  lst_tmp02.add(true);
  lst_tmp02.add(2);
  lst_tmp02.add("Nitiwat");
  print("lst_tmp02 is $lst_tmp02");

  // Unmodifiable List with specific data type
  List<int> lst_tmp03 = const [9, 5, 6, 7];
  print("lst_tmp03 is $lst_tmp03");
  //lst_tmp03.add(1); >> This will be error because const list

  // Unmodifiable List without specific data type
  const List lst_tmp04 = ["test1", 5, "Hello", true, null];
  print("lst_tmp04 is $lst_tmp04");
  /* This section will be error because const list
  lst_tmp04[1] = false;
  lst_tmp04.add(1);
  */

  // List with specific data type & can be added.
  List<int> lst_tmp1 = List.filled(3, 0, growable: true); // [0,0,0]
  print("lst_tmp1 is $lst_tmp1");
  lst_tmp1[0] = 1;
  lst_tmp1[1] = 2;
  lst_tmp1[2] = 3;
  lst_tmp1.add(98);
  lst_tmp1.add(99);
  print("lst_tmp1 is $lst_tmp1");

  // List with specific data type & cannot be added.
  List<int> lst_tmp2 = List.filled(3, 0, growable: false); // [0,0,0]
  print("lst_tmp2 is $lst_tmp2");
  lst_tmp2[0] = 1;
  lst_tmp2[1] = 2;
  lst_tmp2[2] = 3;
  /* This will be error because growable is false
  lst_tmp2.add(98);
  lst_tmp2.add(99);
  */
  print("lst_tmp2 is $lst_tmp2");

  // List with mixed data type
  List lst_tmp3 = List.filled(3, null, growable: true); // [null, null, null]
  print("lst_tmp3 is $lst_tmp3");
  lst_tmp3[0] = 1;
  lst_tmp3[1] = 2;
  lst_tmp3[2] = 3;
  lst_tmp3.add("Added 1");
  lst_tmp3.add("Added 2");
  print("lst_tmp3 is $lst_tmp3");
  print("Type of index 2 in lst_tmp3 is ${lst_tmp3[2].runtimeType}");
  print("Type of index 3 in lst_tmp3 is ${lst_tmp3[3].runtimeType}");

  List<String> lst_tmp4 = List.generate(
      3, (i) => "test" + (i + 1).toString()); // [test1, test2, test3]
  print("lst_tmp4 is $lst_tmp4");
  lst_tmp4.add("testHaha1");
  lst_tmp4.add("testHaha2");
  print("lst_tmp4 is $lst_tmp4");

  List<int> lst_tmp5 = List.generate(3, (i) => i); // [0, 1, 2]
  print("lst_tmp5 is $lst_tmp5");
  lst_tmp5.add(99);
  lst_tmp5.add(98);
  print("lst_tmp5 is $lst_tmp5");
}
