import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
    this.autofocus = false,
    this.autovalidateMode,
    this.controller,
    this.focusNode,
    this.inputFormatters,
    this.keyboardType,
    this.maxLines = 1,
    this.minLines = 1,
    this.onSubmitted,
    required this.placeHolder,
    this.suffixWidget,
    this.validator,
    this.onChanged,
    this.backgroundColor,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  final bool autofocus;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int maxLines;
  final int minLines;
  final void Function(String)? onSubmitted;
  final String placeHolder;
  final Widget? suffixWidget;
  final FormFieldValidator<String>? validator;
  final void Function(String)? onChanged;
  final Color? backgroundColor;
  final TextCapitalization textCapitalization;

  OutlineInputBorder _getOutlineBorder({bool isValid = true}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0),
      borderSide: BorderSide(
        color: isValid ? Colors.black.withOpacity(.25) : Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: backgroundColor,
          ),
          child: TextFormField(
            autofocus: autofocus,
            autovalidateMode: autovalidateMode,
            controller: controller,
            textCapitalization: textCapitalization,
            decoration: InputDecoration(
              suffixIcon: suffixWidget,
              hintText: placeHolder,
              isDense: true,
              hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Colors.black.withOpacity(.3),
                  ),
              enabledBorder: _getOutlineBorder(),
              focusedBorder: _getOutlineBorder(),
              errorBorder: _getOutlineBorder(isValid: false),
              focusedErrorBorder: _getOutlineBorder(isValid: false),
            ),
            focusNode: focusNode,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType ?? TextInputType.text,
            maxLines: maxLines,
            minLines: minLines,
            onFieldSubmitted: onSubmitted,
            style: Theme.of(context).textTheme.bodyText2,
            validator: validator,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
