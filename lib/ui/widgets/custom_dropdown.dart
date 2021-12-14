import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cupboard/ui/app_theme.dart';

class CustomDropDown<T> extends StatelessWidget {
  const CustomDropDown({
    Key? key,
    this.autovalidateMode,
    this.isExpanded = false,
    required this.items,
    required this.onChanged,
    this.validator,
    this.value,
    this.hint,
    this.contentPadding,
    this.backgroundColor,
    this.title,
  }) : super(key: key);

  final String? title;
  final AutovalidateMode? autovalidateMode;
  final bool isExpanded;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator? validator;
  final T? value;
  final Widget? hint;
  final EdgeInsets? contentPadding;
  final Color? backgroundColor;

  OutlineInputBorder _getOutlineBorder({bool isValid = true}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.0),
      borderSide: BorderSide(
        color: isValid ? Colors.black.withOpacity(.25) : AppColors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Column(
            children: [
              Text(
                title ?? '',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(height: 8.h),
            ],
          ),
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: DropdownButtonFormField<T>(
            autovalidateMode: autovalidateMode,
            value: value,
            decoration: InputDecoration(
              contentPadding: contentPadding ?? const EdgeInsets.all(14.0),
              enabledBorder: _getOutlineBorder(),
              focusedBorder: _getOutlineBorder(),
              errorBorder: _getOutlineBorder(isValid: false),
              focusedErrorBorder: _getOutlineBorder(isValid: false),
            ),
            icon: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: RotatedBox(
                quarterTurns: -1,
                child: Icon(Icons.arrow_back_ios_new),
              ),
            ),
            validator: validator,
            focusColor: AppColors.red,
            isExpanded: isExpanded,
            iconSize: 20,
            style: Theme.of(context).textTheme.bodyText2,
            onChanged: onChanged,
            items: items,
            hint: hint,
          ),
        ),
      ],
    );
  }
}
