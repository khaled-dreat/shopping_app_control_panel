part of "../../../../../../../core/import/app_import.dart";

class CustomContainerAddImgProduct extends StatelessWidget {
  const CustomContainerAddImgProduct({
    super.key,
    this.isDetailsImg = true,
  });
  final bool isDetailsImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184.h,
      width: 148.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isDetailsImg
              ? SizedBox()
              : Text(
                  "Add Products Image",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.sp, color: AppColors.bgGrey),
                ),
          Icon(
            size: (isDetailsImg ? 30 : 50).r,
            Icons.add,
            color: AppColors.bgGrey,
            shadows: [
              BoxShadow(
                color: AppColors.bgGrey,
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
