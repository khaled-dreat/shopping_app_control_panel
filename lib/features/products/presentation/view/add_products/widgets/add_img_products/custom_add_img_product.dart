part of "../../../../../../../../core/import/app_import.dart";

class CustomAddImgProduct extends StatelessWidget {
  const CustomAddImgProduct({
    super.key,
    required this.isLoading,
    this.isDetailsImg = true,
  });
  final bool isDetailsImg;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const AppLoading()
        : CustomContainerAddImgProduct(
            isDetailsImg: isDetailsImg,
          );
  }
}
