part of "../../../../../core/import/app_import.dart";

class AddProductView extends StatelessWidget {
  static const String nameRoute = "AddProductView";
  const AddProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // * Product View Body
      backgroundColor: AppColors.scaffoldColor,
      body: const AddProductViewBody(),
    );
  }
}
