// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "../../../../../../../../core/import/app_import.dart";

class CustomImgProduct extends StatelessWidget {
  const CustomImgProduct({
    super.key,
    required this.image,
  });
  final File image;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 184.h,
        width: 148.w,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.file(
          image,
          fit: BoxFit.cover,
        ));
  }
}
