class InputValidation {
  static bool validateName(String? value) {
    value = value!.trim();
    final regex = RegExp(
        r"^(?:(?![×Þß÷þø])[-'a-zA-ZÀ-ÖØ-öø-ÿ])+(([',. -][a-zA-ZÀ-ÖØ-öø-ÿ]+[a-zA-ZÀ-ÖØ-öø-ÿ])?[a-zA-Z])$");
    final isValid = value.isNotEmpty != true || regex.hasMatch(value);
    if (isValid && value.length > 50) return false;
    return isValid;
  }

  static bool validateNameMinimumLength(String? value) {
    value = value!.trim();
    List<String> words;
    words = value.split(" ");
    if (value.length < 3) return false;
    if (value.length > 50) return false;
    if (words.length < 2) return false;
    return true;
  }

  static bool validatePassword(String? value) {
    value = value!.trim();
    final regex = RegExp(
        r"^(?!.* )(?!.* [a-zA-ZÀ-ÖØ-öø-ÿ])(?=.\d)(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$%^&(),.?:{}|<>]).{6,40}$");
    final isValid = value.isNotEmpty != true || regex.hasMatch(value);
    return isValid;
  }

  static bool validateEmail(String? value) {
    value = value!.trim();
    final regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isValid = value.isNotEmpty != true || regex.hasMatch(value);
    return isValid;
  }

  static bool validatePhone(String? value) {
    value = value!.trim();
    final regex = RegExp(r'^\+[1-9]\d{1,14}$');
    final isValid = value.isNotEmpty != true || regex.hasMatch(value);

    if (isValid && value.length < 14) return false;
    return isValid;
  }
}
