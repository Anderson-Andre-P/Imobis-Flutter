import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/helpers/validators/resources.dart';

class InputTextCustom extends StatefulWidget {
  const InputTextCustom({
    Key? key,
    required this.keyboardType,
    this.borderValidator,
    this.isOnBlueBg,
    this.isTaped,
    this.title,
    this.inputController,
    this.onTap,
    this.onChanged,
    this.validator,
    this.inputIcon,
    this.inputFormatters,
    this.enabled,
    this.colorFill,
    this.autovalidateMode,
    this.sufixIcon,
    this.sufixOnPressed,
    this.initialValue,
    this.maxLength,
    this.readOnly,
    this.showCursor,
    this.sufixImage,
    this.hintText,
    this.textColor,
    this.iconColor,
    this.padding,
    this.textAlign,
    this.focusNode,
    this.maxLines,
    this.textSize,
    this.bgColor,
    this.labelSize,
    this.tooltipMessage,
    this.isDense,
    this.decoration,
  }) : super(key: key);

  final TextInputType keyboardType;
  final double? textSize;
  final String? initialValue;
  final String? title;
  final TextEditingController? inputController;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;
  final IconData? inputIcon;
  final IconData? sufixIcon;
  final Widget? sufixImage;
  final VoidCallback? sufixOnPressed;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final int? maxLength;
  final Color? colorFill;
  final AutovalidateMode? autovalidateMode;
  final bool? readOnly;
  final bool? showCursor;
  final String? hintText;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final FocusNode? focusNode;
  final int? maxLines;
  final double? labelSize;
  final bool? isTaped;
  final dynamic borderValidator;
  final dynamic isOnBlueBg;
  final Color? iconColor;
  final Color? bgColor;
  final String? tooltipMessage;
  final bool? isDense;
  final InputDecoration? decoration;

  @override
  State<InputTextCustom> createState() => _InputTextCustomState();
}

class _InputTextCustomState extends State<InputTextCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18.0)),
      child: TextFormField(
        enableInteractiveSelection: widget.enabled,
        showCursor: widget.showCursor,
        readOnly: widget.readOnly ?? false,
        autovalidateMode:
            widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
        controller: widget.inputController,
        keyboardType: widget.keyboardType,
        enabled: widget.enabled ?? true,
        focusNode: widget.focusNode,
        textAlign: widget.textAlign ?? TextAlign.start,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines ?? 1,
        inputFormatters: widget.inputFormatters ?? [],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          fillColor: widget.bgColor ?? null,
          label: Text('${widget.title}'),
          counter: const Offstage(),
          enabledBorder: widget.initialValue == null
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide(color: R.colors.customDarkGrey),
                )
              : null,
          focusedBorder: widget.isOnBlueBg == true
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: R.colors.customBlue,
                    width: 2,
                  ),
                )
              : null,
          suffixIcon: widget.sufixIcon != null
              ? IconButton(
                  onPressed: widget.sufixOnPressed,
                  icon: Icon(widget.sufixIcon),
                  color: widget.iconColor ?? R.colors.customBlue,
                  iconSize: 22,
                  tooltip: widget.tooltipMessage,
                )
              // ignore: prefer_if_null_operators
              : widget.sufixImage != null
                  ? widget.sufixImage
                  : null,
          prefixIcon: widget.inputIcon != null
              ? Icon(
                  widget.inputIcon,
                  color: R.colors.customDarkGrey,
                )
              : null,
          isDense: widget.isDense ?? true,
        ),
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        initialValue: widget.initialValue,
        onTap: widget.onTap ?? () {},
        onChanged: (String newValue) {
          if (widget.onChanged != null) {
            widget.onChanged!(newValue);
          }
        },
        validator: widget.validator,
      ),
    );
  }
}
