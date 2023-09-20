void main() {
  // การประกาศตัวแปรแบบเปลี่ยนแปลงค่าได้ ! >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  // ประกาศตัวแปรแบบไม่ระบุ Type ด้วย var
  var tmp1 = "CMdev";
  var tmp2 = 2;
  var tmp3 = true;

  // ประกาศตัวแปรแบบระบุ Type
  String tmp4 = "Dart";
  int tmp5 = 7777;
  bool tmp6 = false;
  bool? boo_IsRunning;

  print("$tmp1, $tmp2, $tmp3, $tmp4, $tmp5, $tmp6, $boo_IsRunning");

  // สร้างตัวแปร var แบบไม่กำหนดค่า สามารถ print ได้
  var tmp111;
  var tmp222;
  var tmp333;
  print("$tmp111, $tmp222, $tmp333");

  /*
  // สร้างตัวแปรแบบกำหนดประเภทแต่ไม่กำหนดค่า ไม่สามารถ print ได้
  String tmp444;
  int tmp555;
  bool tmp666;
  print("$tmp444, $tmp555, $tmp666"); //ตัวแปรถูกสร้างแบบไม่ init ได้แต่จะไม่สามารถ print ได้โปรแกรมฟ้อง Error
  */

  // การประกาศตัวแปรแบบเปลี่ยนแปลงค่าไม่ได้ ! >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  // const ไว้ใช้สำหรับค่าคงที่ที่ต้อง initial value ก่อน
  // final ไว้ใช้สำหรับเก็บค่าไม่ให้เปลี่ยนแปลงไม่จำเป็นต้อง initial value ก่อนก็สามารถใช้งานได้
  const tmp7 = "initVal";
  final tmp8;

  // final สามารถรับค่าจากตัวแปรอื่นๆได้
  tmp8 = tmp7;
  print("tmp8 is $tmp8");

  // const ไม่สามารถรับค่าจากตัวแปรอื่นๆได้
  // tmp7 = tmp1; >> This line will be error.

  // ตัวแปรแบบ Dynamic >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  dynamic tmp9 = "NITIWAT";
  print("tmp9 is $tmp9, Type is ${tmp9.runtimeType}");

  tmp9 = 500;
  print("tmp9 is $tmp9, Type is ${tmp9.runtimeType}");

  tmp9 += 500;
  print("Result of tmp9+500 is $tmp9");

  //tmp9 += "999"; // Line นี้ไม่แสดง Error เนื่องจากเป็นตัวแปรแบบ dymanic >> แต่ผลลัพธ์รันจะ Error
  //print("Result of tmp9+'999' is $tmp9");

  //print("${tmp9.length}"); // Line นี้ไม่แสดง Error เนื่องจากเป็นตัวแปรแบบ dymanic >> แต่ผลลัพธ์รันจะ Error
  //print("${tmp2.length}"); // Line นี้แสดง Error เนื่องจากเป็นตัวแปร int >> ผลลัพธ์จะรันไม่ได้อยู่แล้ว เพราะฟ้อง Error

  // ตัวแปรแบบ Object >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  Object tmp22 = "Intelligent";
  print("tmp22: $tmp22 is ${tmp22.runtimeType}");

  // print("${tmp22.length}"); // Line นี้แสดง Error เนื่องจากเป็นตัวแปร Object >> ผลลัพธ์จะรันไม่ได้อยู่แล้ว เพราะฟ้อง Error

  tmp22 = 22;
  print("tmp22: $tmp22 is ${tmp22.runtimeType}");
}
