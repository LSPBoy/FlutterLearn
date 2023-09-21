// import 'Utils/math_utils.dart' as mUtils;

//1. 可以用as给库起个别名
//2. 默认情况下，导入一个库时，会导入这个库的所有内容，如果想导入指定的内容可以用show，hide
// import 'Utils/math_utils.dart' show sum;

//3.一次性导入所有文件
import 'Utils/utils.dart';

void main(List<String> args) {
  print(sum(1, 2));
  print(dateFormat());
}

int sum(num1, num2) {
  return num1 + num2;
}
