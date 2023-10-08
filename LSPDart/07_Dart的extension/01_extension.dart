void main(List<String> args) {
  final String message = "Hello World";

  final result = message.lsp_split(" ");
  print(result);
}

extension StringExt on String {
  List<String> lsp_split(String pattern) {
    return this.split(pattern);
  }
}



// class Person {

// }

// extension PersonExt1 on Person {}

// extension PersonExt2 on Person {}