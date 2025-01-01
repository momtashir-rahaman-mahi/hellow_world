///      import 'dart:io';
void  yoyo()
{

  //  VAR AND  DYNAMIC ***
//   dynamic person ='mahi';
//   person =10;
//   person=11.22-0.22;
//    dynamic PERSON2=12;
//   print(person  + PERSON2 );

//   var person1='mahi00';
  //person1=155;
  // print(person1);

  /// *****  USER INPUT    ******
//     String? name=Stdin.readLineSync();
//     int? age=int
//   print('welcome to dart $name/n your age is $age');


//    double n1=11.944;
//    double n2=22.23;
//    print ('sum = ${ (n1+n2).toStringAsFixed(2) } ');


  ///*** LIST ***

//     List<int>number=[1,2,4,5];
//     number.add(22);
//     number.addAll([12,7,44]);
//     number.sort();

//    //  number.insert(1,100);
//    number.insertAll(0,[10,20,60]);

//    print(number);
//   print(number.length);

//   List<String> str=['a','b','c'];
//   print(str.length);
//   print(str);



  //  ***  SET***


//   var name =<String>{'mahi','fff','dfd'};
//   name.add('hhh');
//   name.addAll({'jjj','jijij','huh'});
//   name.remove('mahi');
//   print("contain fff :   ${name.contains('fff')}");
//   print(name);
//   print(name.length);
//   print("element at ${name.elementAt(2)}");
//   var namelist=name.toList();
//   print(namelist);
//   print(name.isNotEmpty);

  /// intersection and union  and difference

//   var aa={'a','b','c','d'};
//   var bb={'a', 'z','x','y'};
//   print(aa.intersection(bb));
//   print(aa.union(bb));
//   print(aa.difference(bb));

      ///CLASS && OBJECT

  class STD
  {
  late String stdname='MOMTASHIR RAHAMAN MAHI';
  late  String dept='CSE';
  late int age=24;
  String  cls='nine';
  int ?year;
  late int id=231093;

  void info()
  {
  print('I am a student &&  I am studing in the  IIUC ');
  }

  static cgpa()
     {
  print('4.00');

    }
  }
  main()
  {
  var obj=STD();
  obj.year=2024;
  print("Dept: ${obj.dept}");
  // obj.id=23;
  print("Name: ${obj.stdname} " );
  print(obj.age);
  print(obj.id);
  print(obj.year);


  obj.info();

  STD.cgpa();
  }


  /// ************ CONSTRUCTOR  **********
  class human{
int lag=2;
int hand=2;
int eyes=2;
late String colour;

human()
{
print('Print new constructor**');
method1();
method2();
}
method1()
{
print('METHOD-1');
}
method2()
{
print('METHOD-2');
}
}
  main()
  {
  var obj=human();
  obj.colour=  'Black';
  print(obj.colour);
  print(obj.hand);
  obj.lag=1;
  print(obj.lag);
  }
}


/// *********  ENCAPSULATION  ********
class restaurant
{
  int _id=2025;
  order(String item)
  {
    _shopping(item);
    _prepareditem(item);
    return "$item server" ;
    ///print("$item served  ** ");

  }
  _prepareditem(String item)
  {
    print(" make $item");
  }
  _shopping(String item)
  {
    print("buy matarial ");
  }
  int get restaurantid=>_id;
  set setid(int value)
  {
    _id=value;
  }
// int get restaurantid=>_id;
}
main()
{
  var kfc=restaurant();
  /// kfc.prepareditem("cook chieken tasty");
  ///kfc.id =202o;
  //print(kfc.id);

  kfc.setid=1111;
  print(kfc.restaurantid); ///set kota
  print(kfc.restaurantid);

  print(kfc.order("chicken fry "));
}

 /// ***** INHERITANCE ****
class father
{
  String name='Mahabub Rahaman';
  String land='2 akor';
  String bike='royal enfild';

  void incomesource()
  {
    print(" ex-ramitance fighter");
  }
}
class son extends father
{
  @override
  void incomesource()  ///METHOD OVERRIDEINDG
  {
    print(" APP DEPLOPER**");
  }
}
  /// ********* THIS KEY WORD  *********
main()
{
  var obj=son();
  print(obj.land);
  obj.bike="rolls ";
  print (obj.bike);
  obj.incomesource();
}

class vehicals
{
  int speed;
  int eng;
  String model;
  vehicals(this.speed,this.eng,this.model);
  void start()
  {
    print("the vehicals in stated");

  }
  void stop()
  {
    print("the vehicals stop");
  }
}
class bike extends vehicals
{
  String bikename;

  bike(this.bikename):super(120,220,"2024");
  void start()
  {
    print("$bikename stared moving");
  }
//   void stop()
//   {
//     print("$bikename is not moving");
//   }

}
main()
{
  var fz=bike("fzs v3");
  print(fz.eng);
  print(fz.speed);
  print(fz.model);
  print(fz.bikename);
  fz.start();
  fz.stop();
}



/// **** ABSTRUCT CLASS ****8
abstract  class animal{
  String name;
  animal(this.name);
  void eat()
  {
    print("ANIMAL  IS  EATING ");
  }
  static   varient ()
  {
    print("This in a german varient dog ");
  }

}
class dog extends animal
{
  String colour;
  dog(this.colour):super("tomi");
}
main()
{
  ///var obj=animal("tom");  //cannot accces direct by using animanl class
  ///  obj.eat();
  var dogi=dog('black');
  dogi.eat();
  print(dogi.colour);

  animal.varient();


}



//// ***** ABSTRUCT CLASS METHOD  ****
abstract class student{

  void attendanceclass();

  void eat()
  {
    print("student in eating");
  }
  void move()
  {
    print("person in moving ");
  }
}
class person extends student
{
  String name;
  person(this.name);

  @override
  void attendanceclass()
  {
    print("$name is doing online class ");
  }
}
class businessman implements student
{
  String comname;
  businessman(this.comname);

  void attendanceclass()
  {
    print("$comname is doing online class ");
  }

  void eat()
  {
    print("student in eating");
  }
  void move()
  {
    print("person in moving ");
  }

}
main() {
  var abid = person('Mahi');
  abid.attendanceclass();
  abid.move();


  var mohi = businessman('MOMTASHIR RAHAMAN');
  mohi.attendanceclass();
  mohi.eat();
}


/// TRY ** CATCH ** FINALY *******
/// main()
// {
//   try{
//
//  // int age ='sd';
//     String agee='ii';
//     int age=int.parse(agee);
//   if(age>=18)
//   {
//     print("you can vote ");
//   }
//   else{
//     print("NO ");
//   }
//
//   }
//   catch(error)
//   {
//     print("you have wrong info that $error ");
//   }
//   finally
//   {
//     print("it will always print  ");
//   }
// }