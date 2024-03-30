part of "../../../../../core/import/app_import.dart";

<<<<<<< HEAD
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
=======
class AddProductsCubit extends Cubit<AddProductsState> {
  AddProductsCubit(this.addProductUseCase) : super(AddProductsInitial());

  ProductDataEntitie productDataModel = ProductDataEntitie();
  final AddProductUseCase addProductUseCase;
  void saveProduct() {
    productDataModel.setImages([
      "https://th.bing.com/th?id=ORMS.10f9b586fd30b840547323a0f5ed6ec3&pid=Wdp&w=612&h=304&qlt=90&c=1&rs=1&dpr=1&p=0"
    ]);
    productDataModel.setCategoryId("1");
    addProductUseCase.call(productDataModel);
>>>>>>> b0f1718 (test)
  }
}
