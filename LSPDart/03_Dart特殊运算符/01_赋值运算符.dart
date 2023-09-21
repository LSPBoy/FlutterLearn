void main(List<String> args) {
  //1、??=
  var name = null;
  name ??= "lilei";
  print(name);

  //2、??
  var name2 = null;
  var temp = name2 ?? "haha";
  print(temp);
}
