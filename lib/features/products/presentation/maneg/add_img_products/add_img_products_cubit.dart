part of "../../../../../core/import/app_import.dart";

List<File?> listofImages = [];
Map<String, File>? mapImgList;

void listOfImgProducts(String key, File value) {
  if (mapImgList == null) {
    mapImgList = {
      key: value,
    };
  } else {
    if (mapImgList!.containsKey(key)) {
      mapImgList!.remove(key);
    }
    mapImgList!.addAll({
      key: value,
    });
  }
  dev.log(mapImgList.toString());

  listofImages = mapImgList?.values.toList() ?? [];
}

class AddImgProductsCubit extends Cubit<AddImgProductsState> {
  AddImgProductsCubit() : super(AddImgProductsInitial());
  final picker = ImagePicker();
  File? image;

  List<File?> images = [];
  Map<String, File>? imgList;

  Future<void> pickImageFromGallery(
      BuildContext context, String keyOFList) async {
    try {
      emit(AddImgProductsLoading());
      final pickImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickImage != null) {
        image = File(pickImage.path);

        listOfImgProducts(keyOFList, image!);
        emit(AddImgProductsSuccess(image: image));
      }
    } catch (e) {
      emit(AddImgProductsFailure(errMessage: e.toString()));
    }
  }
}
