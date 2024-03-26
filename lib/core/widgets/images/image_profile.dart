part of "../../import/app_import.dart";

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage(AppImages.profileImg),
      errorBuilder: (context, error, stackTrace) => const Image(
        image: AssetImage(AppImages.profileNew),
      ),
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress == null
            ? child
            : const Center(
                child: AppLoading(loading: TypeLoading.profile),
              );
      },
    );
  }
}
