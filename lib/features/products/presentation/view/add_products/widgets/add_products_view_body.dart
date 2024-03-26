part of "../../../../../../core/import/app_import.dart";

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          40.verticalSpace,
          // * App Bar
          const CustomeAppbarProfilePage(),
          15.verticalSpace,
          // * ADD Image Product Section
          const CustomImageProductSection(),
          50.verticalSpace,
          // * User Data
          const ProductsDataView()
        ],
      ),
    );
  }
}
