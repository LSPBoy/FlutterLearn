void lspLog(Object message, StackTrace current) {
  HYCustomTrace programInfo = HYCustomTrace(current);
  print("所在文件: ${programInfo.fileName}, 所在行: ${programInfo.lineNumber}, 打印信息: $message");
}

class HYCustomTrace {
  final StackTrace _trace;

  late String fileName;
  late int lineNumber;
  late int columnNumber;

  HYCustomTrace(this._trace) {
    _parseTrace();
  }

  void _parseTrace() {
    var traceString = _trace.toString().split("\n")[0];
    var indexOfFileName = traceString.indexOf(RegExp(r'[A-Za-z_]+.dart'));
    var fileInfo = traceString.substring(indexOfFileName);
    var listOfInfos = fileInfo.split(":");
    fileName = listOfInfos[0];
    lineNumber = int.parse(listOfInfos[1]);
    var columnStr = listOfInfos[2];
    columnStr = columnStr.replaceFirst(")", "");
    columnNumber = int.parse(columnStr);
  }
}