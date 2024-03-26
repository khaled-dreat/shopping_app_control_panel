part of "../../../../../../../../core/import/app_import.dart";

class CustomBtnAddProductsBlocConsumer extends StatelessWidget {
  const CustomBtnAddProductsBlocConsumer({
    super.key,
    this.isDetailsImg = true,
    required this.keyOFList,
  });
  final bool isDetailsImg;
  final String keyOFList;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductsCubit, AddProductsState>(
      listener: (context, state) {
        if (state is AddProductsFailure) {
          AppSnackBar.snackBarError(msg: state.errMessage);
        }
      },
      builder: (context, state) {
        AddProductsCubit pickImageFromGallery =
            BlocProvider.of<AddProductsCubit>(context);
        return InkWell(
          onTap: () {
            pickImageFromGallery.pickImageFromGallery(context, keyOFList);
          },
          child: state is AddProductsSuccess
              ? CustomImgProduct(
                  image: state.image!,
                )
              : CustomAddImgProduct(
                  isLoading: state is AddProductsLoading,
                  isDetailsImg: isDetailsImg,
                ),
        );
      },
    );
  }
}
