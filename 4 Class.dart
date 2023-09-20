void main() {
  var obj1 = PersonV1();
  obj1.fname = "Nitiwat";
  obj1.lname = "Chunprapanusorn";
  obj1.display();

  // Default constructure
  var obj2 = PersonV2();
  obj2.display();

  // Overloading constructure
  var obj3 = PersonV2.CustomerName("MyFname", "MyLname");
  obj3.display();

  // Setter - Getter from PersonV3
  var obj4 = PersonV3.CustomerName("Prayut", "ChanAungkarnPut");
  obj4.display(); // PersonV3 >> First name is Prayut, Last name is ChanAungkarnPut
  obj4.titleMale = obj4.fname.toString();
  obj4.display(); // PersonV3 >> First name is Mr. Prayut, Last name is ChanAungkarnPut
  print(obj4.vipMember); // [VIP] Mr. Prayut ChanAungkarnPut

  // Callable function
  print(
      obj4()); // This is return from 'call' function. fname is Mr. Prayut, lname is ChanAungkarnPut
}

class PersonV1 {
  String? fname;
  String? lname;
  void display() {
    print("PersonV1 >> First name is $fname, Last name is $lname");
  }
}

class PersonV2 {
  String? fname;
  String? lname;

  PersonV2() {
    this.fname = "My Default FirstName";
    this.lname = "My Default LastName";
  }

  PersonV2.CustomerName(String in_fname, String in_lname) {
    this.fname = in_fname;
    this.lname = in_lname;
  }

  void display() {
    print("PersonV2 >> First name is $fname, Last name is $lname");
  }
}

class PersonV3 {
  String? fname;
  String? lname;

  PersonV3() {
    this.fname = "My Default FirstName";
    this.lname = "My Default LastName";
  }

  PersonV3.CustomerName(String in_fname, String in_lname) {
    this.fname = in_fname;
    this.lname = in_lname;
  }

  // This is getter & setter
  void set titleMale(String in_fname) => this.fname = "Mr. $in_fname";
  void set titleFemale(String in_fname) {
    this.fname = "Mrs. $in_fname";
  }

  String get vipMember {
    return "[VIP] $fname $lname";
  }

  void display() {
    print("PersonV3 >> First name is $fname, Last name is $lname");
  }

  String call() {
    return "This is return from 'call' function. fname is ${this.fname}, lname is ${this.lname}";
  }
}
