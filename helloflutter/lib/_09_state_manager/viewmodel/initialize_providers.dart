
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'counter_view_model.dart';
import 'uesr_view_model.dart';
import '../model/user_info.dart';


List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx) => JGCounterViewModel(),),
  ChangeNotifierProvider(create: (ctx) => JGUserViewModel(UserInfo("军", 30, "hello")),),
];