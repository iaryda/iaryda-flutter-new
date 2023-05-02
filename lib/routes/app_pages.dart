import 'package:get/get.dart';
import '../search_page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SEARCH,
      page: () => const SearchPage(),
      //binding: SearchBinding(),
    )
  ];
}
