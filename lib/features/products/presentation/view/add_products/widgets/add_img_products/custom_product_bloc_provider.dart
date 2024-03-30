part of "../../../../../../../../core/import/app_import.dart";

class CustomProductBlocProvider extends StatefulWidget {
  const CustomProductBlocProvider({
    super.key,
    this.isDetailsImg = true,
    required this.keyOFList,
  });
  final bool isDetailsImg;
  final String keyOFList;

  @override
  State<CustomProductBlocProvider> createState() =>
      _CustomProductBlocProviderState();
}

class _CustomProductBlocProviderState extends State<CustomProductBlocProvider> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
<<<<<<< HEAD
      create: (context) => AddProductsCubit(),
=======
      create: (context) => AddImgProductsCubit(),
>>>>>>> b0f1718 (test)
      child: CustomBtnAddProductsBlocConsumer(
        keyOFList: widget.keyOFList,
        isDetailsImg: widget.isDetailsImg,
      ),
    );
  }
}
