import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/helpers/validators/resources.dart';

class InputPasswordCustom extends StatelessWidget {
  const InputPasswordCustom({
    Key? key,
    required this.keyboardType,
    required this.title,
    required this.isPassword,
    this.borderValidator,
    this.isOnBlueBg,
    this.inputController,
    this.onTap,
    this.onChanged,
    this.validator,
    this.inputIcon,
    this.sufixIcon,
    this.sufixOnPressed,
    this.inputFormatters,
    this.enabled,
    this.colorFill,
    this.autoValidateMode,
    this.maxLength,
    this.initialValue,
    this.passwordStrengthColor,
    this.passwordStrengthTitle,
    this.hintText,
    this.labelColor,
    this.padding,
    this.decoration,
  }) : super(key: key);

  final TextInputType keyboardType;
  final String title;
  final bool isPassword;
  final TextEditingController? inputController;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final IconData? inputIcon;
  final IconData? sufixIcon;
  final VoidCallback? sufixOnPressed;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final Color? colorFill;
  final AutovalidateMode? autoValidateMode;
  final int? maxLength;
  final String? initialValue;
  final Color? passwordStrengthColor;
  final String? passwordStrengthTitle;
  final String? hintText;
  final Color? labelColor;
  final EdgeInsetsGeometry? padding;
  final dynamic borderValidator;
  final dynamic isOnBlueBg;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18.0)),
      padding: padding ?? EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        autovalidateMode:
            autoValidateMode ?? AutovalidateMode.onUserInteraction,
        controller: inputController != null ? inputController! : null,
        keyboardType: keyboardType,
        enabled: enabled ?? true,
        obscureText: isPassword,
        inputFormatters: inputFormatters ?? [],
        maxLength: maxLength,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          counter: const Offstage(),
          isDense: true,
          focusedBorder: isOnBlueBg == true
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: R.colors.customBlue,
                    width: 2,
                  ),
                )
              : null,
          label: Text('${title}'),
          suffixIcon: sufixIcon != null
              ? IconButton(
                  onPressed: sufixOnPressed ?? () {},
                  icon: Icon(sufixIcon),
                  iconSize: 22,
                )
              : null,
          prefixIcon: inputIcon != null
              ? Icon(
                  inputIcon,
                  color: R.colors.customDarkGrey,
                )
              : null,
          enabledBorder: initialValue == null
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide(color: R.colors.customDarkGrey),
                )
              : null,
        ),
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        onTap: onTap ?? () {},
        initialValue: initialValue,
        onChanged: (String newValue) {
          if (onChanged != null) {
            onChanged!(newValue);
          }
        },
        validator: validator,
      ),
    );
  }
}
