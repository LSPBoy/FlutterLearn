import 'package:lsp_flutter/day07/viewmodel/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:lsp_flutter/day07/model/user_info.dart';
import 'counter_view_model.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx) => LSPCounterViewModel(),),
  ChangeNotifierProvider(create: (ctx) => LSPUserViewModel(UserInfo("李大锤", 99, "imageURL")),)
];