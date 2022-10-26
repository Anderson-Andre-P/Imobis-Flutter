import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../components/input_text.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
    this.value,
    this.title,
    this.borderValidator,
    this.initialValue,
    this.padding,
    this.inputController,
    this.isOnBlueBg,
    this.prefixIcon,
    this.isDense,
    this.fillColor,
    this.enabledBorder,
    this.decoration,
    this.bgColor,
  }) : super(key: key);

  final ValueChanged<String>? value;
  final String? title;
  final String? initialValue;
  final EdgeInsets? padding;
  final dynamic borderValidator;
  final TextEditingController? inputController;
  final dynamic isOnBlueBg;
  final IconData? prefixIcon;
  final bool? isDense;
  final Color? fillColor;
  final Color? bgColor;
  final InputDecoration? decoration;
  final InputBorder? enabledBorder;

  @override
  Widget build(BuildContext context) {
    return InputTextCustom(
      keyboardType: TextInputType.emailAddress,
      hintText: "Login",
      borderValidator: borderValidator,
      padding: padding,
      inputIcon: prefixIcon,
      isOnBlueBg: isOnBlueBg,
      title: title ?? "Email",
      inputController: inputController,
      onChanged: value,
      initialValue: initialValue,
      isDense: isDense,
      inputFormatters: [],
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        fillColor: bgColor ?? null,
      ),
      colorFill: fillColor,
      validator: (value) {
        if (!EmailValidator.validate(value!.trim()) && value.isNotEmpty) {
          return "Email inválido";
        }
        return null;
      },
    );
  }
}
