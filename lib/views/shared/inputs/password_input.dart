import 'package:flutter/material.dart';

import '../../../core/helpers/validators/input_validation.dart';
import '../components/input_password.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput({
    Key? key,
    this.value,
    this.title,
    this.isOnBlueBg,
    this.initialValue,
    required this.isObscure,
    this.borderValidator,
    this.sufixIcon,
    this.sufixOnPressed,
    this.padding,
    this.inputController,
    this.compareController,
    this.prefixIcon,
    this.fillColor,
    this.decoration,
    this.bgColor,
  }) : super(key: key);

  final ValueChanged<String>? value;
  final bool isObscure;
  final IconData? sufixIcon;
  final VoidCallback? sufixOnPressed;
  final TextEditingController? compareController;
  final String? title;
  final String? initialValue;
  final EdgeInsets? padding;
  final dynamic borderValidator;
  final TextEditingController? inputController;
  final dynamic isOnBlueBg;
  final IconData? prefixIcon;
  final InputDecoration? decoration;
  final Color? bgColor;
  final Color? fillColor;

  // final bool? isDense;

  @override
  Widget build(BuildContext context) {
    return InputPasswordCustom(
      keyboardType: TextInputType.text,
      hintText: "Senha",
      borderValidator: borderValidator,
      padding: padding,
      inputIcon: prefixIcon,
      isOnBlueBg: isOnBlueBg,
      title: title ?? "Senha",
      inputController: inputController,
      onChanged: value,
      initialValue: initialValue,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      isPassword: isObscure,
      sufixIcon: sufixIcon,
      sufixOnPressed: sufixOnPressed,
      inputFormatters: [],
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        fillColor: bgColor ?? null,
      ),
      colorFill: fillColor,
      validator: (value) {
        if (!InputValidation.validatePassword(value) && value!.isNotEmpty) {
          return "Campo inválido";
        } else if (compareController != null) {
          if (compareController!.text != inputController!.text) {
            return "Senhas inválidas";
          }
        }
        return null;
      },
    );
  }
}
