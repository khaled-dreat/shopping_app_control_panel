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
    return BlocConsumer<AddImgProductsCubit, AddImgProductsState>(
      listener: (context, state) {
        if (state is AddImgProductsFailure) {
          AppSnackBar.snackBarError(msg: state.errMessage);
        }
      },
      builder: (context, state) {
        AddImgProductsCubit pickImageFromGallery =
            BlocProvider.of<AddImgProductsCubit>(context);
        return InkWell(
          onTap: () {
            pickImageFromGallery.pickImageFromGallery(context, keyOFList);
          },
          child: state is AddImgProductsSuccess
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
