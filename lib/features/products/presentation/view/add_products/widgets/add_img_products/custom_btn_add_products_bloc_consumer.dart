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
<<<<<<< HEAD
    return BlocConsumer<AddProductsCubit, AddProductsState>(
      listener: (context, state) {
        if (state is AddProductsFailure) {
=======
    return BlocConsumer<AddImgProductsCubit, AddImgProductsState>(
      listener: (context, state) {
        if (state is AddImgProductsFailure) {
>>>>>>> b0f1718 (test)
          AppSnackBar.snackBarError(msg: state.errMessage);
        }
      },
      builder: (context, state) {
<<<<<<< HEAD
        AddProductsCubit pickImageFromGallery =
            BlocProvider.of<AddProductsCubit>(context);
=======
        AddImgProductsCubit pickImageFromGallery =
            BlocProvider.of<AddImgProductsCubit>(context);
>>>>>>> b0f1718 (test)
        return InkWell(
          onTap: () {
            pickImageFromGallery.pickImageFromGallery(context, keyOFList);
          },
<<<<<<< HEAD
          child: state is AddProductsSuccess
=======
          child: state is AddImgProductsSuccess
>>>>>>> b0f1718 (test)
              ? CustomImgProduct(
                  image: state.image!,
                )
              : CustomAddImgProduct(
<<<<<<< HEAD
                  isLoading: state is AddProductsLoading,
=======
                  isLoading: state is AddImgProductsLoading,
>>>>>>> b0f1718 (test)
                  isDetailsImg: isDetailsImg,
                ),
        );
      },
    );
  }
}
