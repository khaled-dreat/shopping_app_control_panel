part of "../../../../../../../core/import/app_import.dart";

class CustomImageProductSection extends StatelessWidget {
  const CustomImageProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomProductBlocProvider(
          isDetailsImg: false,
          keyOFList: "1",
        ),
        25.horizontalSpace,
        SizedBox(
          height: 230,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 90,
                    child: const CustomProductBlocProvider(
                      keyOFList: "2",
                    ),
                  ),
                  15.horizontalSpace,
                  SizedBox(
                      width: 80,
                      height: 90,
                      child: const CustomProductBlocProvider(
                        keyOFList: "3",
                      )),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: 80,
                      height: 90,
                      child: const CustomProductBlocProvider(
                        keyOFList: "4",
                      )),
                  15.horizontalSpace,
                  SizedBox(
                      width: 80,
                      height: 90,
                      child: const CustomProductBlocProvider(
                        keyOFList: "5",
                      )),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
