part of "../../import/app_import.dart";

class AppPickImageFromGallery {
  final picker = ImagePicker();
  File? image;

  List<File?> images = [];
  Map<String, File>? imgList;

  List<File?> listOfImgProducts(String key, File value) {
    if (imgList == null) {
      imgList = {
        key: value,
      };
    } else {
      if (imgList!.containsKey(key)) {
        imgList!.remove(key);
      }
      imgList!.addAll({
        key: value,
      });
    }
    dev.log(imgList.toString());

    return imgList?.values.toList() ?? [];
  }

  Future<void> pickImageFromGallery(
      BuildContext context, String keyOFList) async {
    try {
      final pickImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickImage != null) {
        image = File(pickImage.path);

        listOfImgProducts(keyOFList, image!);
      }
    } catch (e) {}
  }
}
