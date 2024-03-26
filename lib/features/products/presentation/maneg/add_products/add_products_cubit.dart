part of "../../../../../core/import/app_import.dart";

List<File?> images = []; // قائمة لتخزين الصور
Map<String, File>? imgList;

void listOfImgProducts(String key, File value) {
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
}

class AddProductsCubit extends Cubit<AddProductsState> {
  AddProductsCubit() : super(AddProductsInitial());

  final picker = ImagePicker();
  File? image;

  Future<void> pickImageFromGallery(
      BuildContext context, String keyOFList) async {
    try {
      emit(AddProductsLoading());
      final pickImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickImage != null) {
        image = File(pickImage.path);

        listOfImgProducts(keyOFList, image!);
        emit(AddProductsSuccess(image: image));
      }
    } catch (e) {
      emit(AddProductsFailure(errMessage: e.toString()));
    }
  }
}
