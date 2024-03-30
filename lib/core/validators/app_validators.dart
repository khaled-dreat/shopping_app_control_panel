part of "../import/app_import.dart";

class AppValidators {
  // * message Error
  static final String messageEnterValue = AppLangKey.enterValue.tr();
  static final String messageCorrectEmail = AppLangKey.errorEmail.tr();
  static final String messageCorrectPass = AppLangKey.errorPass.tr();
  static final String messageConfirmPass = AppLangKey.errorConfirmPass.tr();
  static final String messageProductName = "اسم المنتج ضروري";
  static final String messageProductPrice = "سعر المنتج ضروري";
  static final String messageProductDescription = "وصف المنتج ضروري";
  // TODO :

  static String? isEmail(String? value) => templateValidator(
      value, !validators.isEmail(value ?? ''), messageCorrectEmail);

  static String? checkPass(String? value) => templateValidator(
      value, !validators.isLength(value ?? '', 6, 12), messageCorrectPass);

  static String? checkProductName(String? value) => templateValidator(
      value, !validators.isLength(value ?? '', 0, 100), messageProductName);

  static String? checkProductPrice(String? value) => templateValidator(
      value, !validators.isLength(value ?? '', 0, 100), messageProductPrice);

  static String? checkProductDescription(String? value) => templateValidator(
      value,
      !validators.isLength(value ?? '', 0, 250),
      messageProductDescription);

  static String? checkConfirmPass(String? value, String? pass) =>
      templateValidator(
          value, !validators.equals(value?.trim(), pass), messageConfirmPass);

  // * validator
  static String? templateValidator(
      String? value, bool condition, String errorMsg) {
    if (value?.isEmpty ?? true) {
      return messageEnterValue;
    } else if (condition) {
      return errorMsg;
    }
    return null;
  }
}
