import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/core/utils/style_utils.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final String? label;
  final String? hintText;
  final IconData? icon;
  final bool onFocus;
  final FormFieldValidator? validator;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool isPassword;
  final bool isObscure;
  final VoidCallback? showPassword;
  final bool showClearIcon;
  final VoidCallback? clearInput;
  final ValueChanged<String>? onChanged;
  final int? maxLines;
  final Widget? suffixIcon;
  final TextStyle? errorStyle;
  final bool isEnabled;
  final Icon? prefixIcon;
  final EdgeInsets? inputPadding;

  const TextInput(
      {super.key,
      this.controller,
      this.initialValue,
      this.label,
      this.hintText,
      this.icon,
      this.onChanged,
      this.onFocus = false,
      this.isPassword = false,
      this.isObscure = false,
      this.showPassword,
      this.showClearIcon = false,
      this.clearInput,
      this.validator,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.keyboardType = TextInputType.text,
      this.textInputAction,
      this.maxLines = 1,
      this.suffixIcon,
      this.errorStyle = const TextStyle(fontSize: 15),
      this.isEnabled = true,
      this.prefixIcon,
        this.inputPadding =  const EdgeInsets.symmetric(vertical: 10, horizontal: 10)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: inputPadding!,
      child: TextFormField(
        initialValue: initialValue,
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        maxLines: maxLines,
        enabled: isEnabled,
        autovalidateMode:
            autovalidateMode ?? AutovalidateMode.onUserInteraction,
        cursorColor: AppColors.primaryColor,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        obscureText: isObscure,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            isDense: true,
            labelText: label,
            disabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                 15.00,
              ),
              borderSide: const BorderSide(width: 1,
              color: AppColors.greyLightColor,
              )
            ),
            errorStyle: errorStyle,
            hintText: hintText,
            alignLabelWithHint: true,
            enabledBorder: inputOutlineBorder(onFocus: !onFocus),
            focusedBorder: inputOutlineBorder(onFocus: onFocus),
            errorBorder: inputOutlineBorder(
                onFocus: onFocus, focusBorderColor: Colors.redAccent),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            labelStyle: const TextStyle(color: AppColors.blackColor),
            filled: true,
            hintStyle: const TextStyle(color: AppColors.orangeColor, fontSize: 18, fontWeight: FontWeight.w400),
            fillColor: Colors.white,
            prefixIcon: prefixIcon,
            
      ),
    ));
  }
}
