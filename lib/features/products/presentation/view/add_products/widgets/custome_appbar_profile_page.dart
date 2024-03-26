part of "../../../../../../core/import/app_import.dart";

class CustomeAppbarProfilePage extends StatelessWidget {
  const CustomeAppbarProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // * Back Btn
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close)),
        0.1.sh.horizontalSpace,
        // * Title
        Text(
          "Add Product",
          style: AppTheme.h5(context)!.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
