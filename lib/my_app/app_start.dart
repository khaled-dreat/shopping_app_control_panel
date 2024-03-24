part of "../core/import/app_import.dart";

class AppStart extends StatelessWidget {
  const AppStart({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // * Theme
        // TODO : theme: AppThemeChoose.light(context),
        // TODO : darkTheme: AppThemeChoose.dark(context),
        themeMode: ThemeMode.light,
        // * Route
        routes: AppRoute.routes,
        initialRoute: AppRoute.inteRoute,
      ),
    );
  }
}
