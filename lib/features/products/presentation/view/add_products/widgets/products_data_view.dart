part of '../../../../../../core/import/app_import.dart';

class ProductsDataView extends StatelessWidget {
  const ProductsDataView({
    super.key,
  });

  static final GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    AddProductsCubit cAddProducts = context.read<AddProductsCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.r),
      child: Form(
        key: keyForm,
        child: Column(
          children: [
            // * Product Name
            CustomTextForm(
              label: "Product Name",
              //    onSaved: ,
              validator: AppValidators.checkProductName,
              //    onSaved: cAddProducts.productDataModel.setName,
            ),
            20.verticalSpace,
            // * Price
            CustomTextForm(
              label: "Price",
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: AppValidators.checkProductPrice,
              //    onSaved: cAddProducts.productDataModel.setPrice,
            ),
            20.verticalSpace,
            // * Description
            CustomTextForm(
              label: "Description",
              maxLines: 8,
              validator: AppValidators.checkProductDescription,
              //   onSaved: cAddProducts.productDataModel.setDescription,
            ),
            20.verticalSpace,
            // * Category Section
            //     const CustomCategorySection(),
            // * Save Product Btn
            CustomBtn(
              title: Text(
                "Save Product".toUpperCase(),
                style: AppTheme.h6(context)?.copyWith(color: AppColors.bgWhite),
              ),
              height: 55.h,
              onTap: () async {
                keyForm.currentState?.save();
                if (keyForm.currentState?.validate() ?? false) {
                  context.read<AddProductsCubit>().saveProduct();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
