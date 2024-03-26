part of "../import/app_import.dart";

class AppRoute {
  // * Pages App
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    HomeView.nameRoute: (context) => const HomeView(),
    AddProductView.nameRoute: (context) => const AddProductView(),
  };

  // * Inte Route
  static String inteRoute = AddProductView.nameRoute;

  // * push Name
  static void go(BuildContext context, String nameRoute) =>
      Navigator.pushNamed(context, nameRoute);

  // * push Name Replace
  static void goReplace(BuildContext context, String nameRoute) =>
      Navigator.pushReplacementNamed(context, nameRoute);

  // * push Name
  static void goMaterial(BuildContext context, Widget page) {
    MaterialPageRoute<Widget> route =
        MaterialPageRoute(builder: (context) => page);
    Navigator.push(context, route);
  }
}
