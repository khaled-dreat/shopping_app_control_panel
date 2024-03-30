import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import './core/import/app_import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CategoryEntityAdapter());
  // Open the Hive boxes
  await openHiveBoxes();
  setupServiceLocatorCategory();
  setupServiceLocatorAddProduct();
  Bloc.observer = SimpleBlocObserver();

  runApp(const AppStart());
}

Future<void> openHiveBoxes() async {
  await Hive.openBox<CategoryEntity>(LocalDataKey.keyCategories);
}
