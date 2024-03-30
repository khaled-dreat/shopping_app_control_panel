part of '../../../../../core/import/app_import.dart';

@immutable
sealed class AddImgProductsState {}

class AddImgProductsInitial extends AddImgProductsState {}

class AddImgProductsLoading extends AddImgProductsState {}

class AddImgProductsFailure extends AddImgProductsState {
  final String errMessage;

  AddImgProductsFailure({required this.errMessage});
}

class AddImgProductsSuccess extends AddImgProductsState {
  final File? image;

  AddImgProductsSuccess({required this.image});
}
