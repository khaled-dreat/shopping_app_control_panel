part of "../../import/app_import.dart";

List<int> values = [1, 2, 3, 4, 5, 6, 7, 8, 9];

class DropDownSelectCategory extends StatelessWidget {
  const DropDownSelectCategory({
    super.key,
    this.isEditing = true,
  });
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254.w,
      height: 60.h,
      child: DropdownButtonFormField(
        iconSize: 35.r,
        decoration: InputDecoration(
            hintText: "Select Category",
            hintStyle: TextStyle(fontSize: 20.sp),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDime.lg.r),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Colors.blue),
            )),
        value: values.first,
        items: values.map((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(value.toString(), style: TextStyle(fontSize: 20)),
          );
        }).toList(),
        onChanged: (value) {},
      ),
    );
  }
}
