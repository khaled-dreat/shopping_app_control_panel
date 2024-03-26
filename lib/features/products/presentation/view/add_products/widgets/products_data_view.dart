part of '../../../../../../core/import/app_import.dart';

class ProductsDataView extends StatelessWidget {
  const ProductsDataView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.r),
      child: Column(
        children: [
          // * Product Name
          const CustomTextForm(
            label: "Product Name",
          ),
          20.verticalSpace,
          // * Price
          CustomTextForm(
            label: "Price",
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          20.verticalSpace,
          // * Description
          const CustomTextForm(
            label: "Description",
            maxLines: 8,
          ),
          20.verticalSpace,
          // * Category Section
          const CustomCategorySection(),
          // * Save Product Btn
          CustomBtn(
            title: Text(
              "Save Product".toUpperCase(),
              style: AppTheme.h6(context)?.copyWith(color: AppColors.bgWhite),
            ),
            height: 55.h,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
