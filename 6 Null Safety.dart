void main() {
  // ? ใช้สำหรับกำหนดให้ตัวแปรที่สร้างขึ้นมาเป็น Null ได้
  String? myName = null;
  if (myName == null) {
    print("Result of ? is $myName");
  }

  // ?. ใช้สำหรับต่อหลังชื่อตัวแปรเพื่อไม่ให้เกิด Error กรณี null และนำไปใช้งาน
  print("Result of ?. is ${myName?.length}");

  // !. ใช้สำหรับต่อหลังชื่อตัวแปรเพื่อ Force ให้ Throw Exception กรณีตัวแปรเป็น null
  // print(myName!); >> This line will be error because of null

  // ?? ใช้สำหรับต่อหลังชื่อตัวแปรเพื่อเช็คว่า null หรือไม่ ถ้า null จะแสดงคำด้านหลังแทน
  print(myName ?? "Replaced value when null");
}
