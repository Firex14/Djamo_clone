import 'package:djamo_clone/modules/home/home_page_provider.dart';
import 'package:provider/provider.dart';


class Providers {
  Providers._();

  static final globalProviders = [
    ChangeNotifierProvider<HomeProvider>(create: (_) => HomeProvider()),
  ].toList();
}
