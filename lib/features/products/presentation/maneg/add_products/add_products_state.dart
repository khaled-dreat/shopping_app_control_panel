// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../../../../core/import/app_import.dart';

abstract class AddProductsState {}

class AddProductsInitial extends AddProductsState {}

class AddProductsLoading extends AddProductsState {}

class AddProductsFailure extends AddProductsState {
  final String errMessage;

  AddProductsFailure({required this.errMessage});
}

class AddProductsSuccess extends AddProductsState {
  final File? image;

  AddProductsSuccess({required this.image});
}
