part of "../../../../../../core/import/app_import.dart";

class CustomCategorySection extends StatelessWidget {
  const CustomCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DropDownSelectCategory(),
        CustomBtn(
          title: Icon(
            Icons.add,
            color: AppColors.bgWhite,
            size: 35.r,
          ),
          width: 70.w,
          height: 60.h,
          onTap: () {},
        )
      ],
    );
  }
}
