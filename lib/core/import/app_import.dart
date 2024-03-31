import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:hive/hive.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:nested/nested.dart';
import 'package:get_it/get_it.dart';

//  ************************ AS & SHOW **************************

import 'package:dartz/dartz.dart' show Either, left, right;
import 'dart:io' show Directory, File, Platform, SocketException;
import 'dart:developer' as dev;
import 'dart:convert' as convert;
import 'package:path/path.dart' as path;

import 'package:validators/validators.dart' as validators;

//  ************************ App Start **************************
part '../../my_app/app_start.dart';

// ! ************************ Core **************************
part "../route/app_route.dart";
part "../theme/app_theme.dart";
part "../theme/app_theme_choose.dart";
part "../theme/app_color.dart";
part "../dime/app_dime.dart";
part "../widgets/text_form/text_form_field.dart";
part "../widgets/snackbar/snackbar.dart";
part "../widgets/images/image_profile.dart";
part "../constant/app_icons.dart";
part "../constant/app_images.dart";
part "../constant/app_failure.dart";
part "../constant/app_catogre.dart";
part "../language/app_lang.dart";
part "../language/app_lang_key.dart";
part "../language/app_lang_config.dart";
part "../widgets/loading/app_loading.dart";
part '../services/api/api_service.dart';
part "../services/local_data/save_local_data.dart";
part "../setup_service_locator/setup_service_locator.dart";
part "../simple_bloc_observer/simple_bloc_observer.dart";
part "../usecase/use_case.dart";
part "../validators/app_validators.dart";
part "../services/api/api_key.dart";
part "../services/local_data/local_data_key.dart";

// ?  ************************ features **************************
//  ************************ Checkout **************************

//  ************************ Home **************************
part "../../features/home/presentation/cubit/home_cubit.dart";
part "../../features/home/presentation/cubit/home_state.dart";
part "../../features/home/presentation/view/home/home_view.dart";
part "../../features/home/presentation/view/home/widgets/home_view_body.dart";

//  ************************ Products **************************
part "../../features/products/presentation/view/add_products/add_products_view.dart";
part "../../features/products/presentation/view/add_products/widgets/add_products_view_body.dart";
part "../../features/products/presentation/view/add_products/widgets/custom_btn.dart";
part "../../features/products/presentation/view/add_products/widgets/custome_appbar_profile_page.dart";
part "../../features/products/presentation/view/add_products/widgets/products_data_view.dart";
part "../../features/products/presentation/maneg/add_products/add_products_cubit.dart";
part "../../features/products/presentation/maneg/add_products/add_products_state.dart";
part '../../features/products/presentation/view/add_products/widgets/add_img_products/custom_add_img_product.dart';
part '../../features/products/presentation/view/add_products/widgets/add_img_products/custom_btn_add_products_bloc_consumer.dart';
part '../../features/products/presentation/view/add_products/widgets/add_img_products/custom_container_add_img_product.dart';
part '../../features/products/presentation/view/add_products/widgets/add_img_products/custom_img_product.dart';
part '../../features/products/presentation/view/add_products/widgets/add_img_products/custom_product_bloc_provider.dart';
part "../../features/products/presentation/view/add_products/widgets/custom_category_section.dart";
part "../../features/products/presentation/view/add_products/widgets/add_img_products/custom_image_product_section.dart";
part "../../features/products/domain/repositories/product_repo.dart";
part "../../features/products/data/repositories/product_repo_impl.dart";
part "../../features/products/data/datasources/products_remote_data_source.dart";
part "../../features/products/domain/usecases/add_product_assets_use_case.dart";
part "../../features/category/presentation/maneg/fetch_all_category_cubit/category_cubit.dart";
part "../../features/category/presentation/maneg/fetch_all_category_cubit/category_state.dart";
part "../../features/products/presentation/maneg/add_img_products/add_img_products_state.dart";
part "../../features/products/presentation/maneg/add_img_products/add_img_products_cubit.dart";
part "../../features/products/domain/entities/product_data_entitie.dart";

//  ************************ Category **************************
part "../../features/category/domain/entities/category_entity.dart";
part "../../features/category/domain/entities/category_entity.g.dart";
part "../../features/category/data/datasources/category_local_data_source.dart";
part "../../features/category/data/datasources/category_remote_data_source.dart";
part "../../features/category/data/models/category_model/category_model.dart";
part "../../features/category/data/repositories/category_repo_impl.dart";
part "../../features/category/domain/repositories/category_repo.dart";
part "../../features/category/domain/usecases/fetch_all_category_use_case.dart";



//  ************************ login Page **************************


//  ************************ Successfully Order **************************
