import '../page/edit_page.dart';
import '../page/main_page.dart';
import '../page/note_page.dart';
import '../page/profile_page.dart';

class AppRoutes {
  static const home = 'home';
  static const profile = 'profile';
  static const edit = 'edit';
  static const note = 'note';
}

final routes = {
  AppRoutes.home: (context) => const MainPage(title: 'Halaman Beranda'),
  AppRoutes.profile: (context) => ProfilePage(),
  AppRoutes.edit: (context) => const EditPage(),
  AppRoutes.note: (context) => const NotePage(),
};
