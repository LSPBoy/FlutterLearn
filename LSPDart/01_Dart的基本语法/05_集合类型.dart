void main(List<String> args) {
  // 1.列表List[]
  var names = ["abc", "cba", "nba", "111", "111"];
  names.add("222");
  print(names);

  var setNames = Set.from(names).toList();
  print(setNames);

  // 2. 集合Set{}
  var movies = {"星际穿越", "大话西游", "盗梦空间"};
  print(movies);

  // 3. 映射Map
  var info = {"name": "why", "age": 18};
  print(info);
}
//dart中没有关键字定义接口，默认情况下所有的class都是隐式接口