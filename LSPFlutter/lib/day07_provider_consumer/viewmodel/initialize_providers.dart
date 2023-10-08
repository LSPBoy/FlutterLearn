import 'user_view_model.dart';
import 'package:provider/provider.dart';
import '../model/user_info.dart';
import 'counter_view_model.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx) => LSPCounterViewModel(),),
  ChangeNotifierProvider(create: (ctx) => LSPUserViewModel(UserInfo("李大锤", 99, "imageURL")),)
];