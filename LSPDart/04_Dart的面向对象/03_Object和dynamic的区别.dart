void main(List<String> args) {

  //父类应用指向子类对象
  //Object调用方法时，编译时会报错
  //dynamic调用方法时，编译时不报错，但是运行时会存在安全隐患

   // Object obj = "lisi";
  // print(obj.substring(1)); //报错
 
  dynamic dyn = "lisi";
  print(dyn.substring(1));
}