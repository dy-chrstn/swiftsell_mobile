import 'package:flutter/material.dart';

class CustomFieldWidget extends StatefulWidget {
  const CustomFieldWidget({
    super.key,
    this.controller,
    this.validator,
    this.labelText,
    this.hintText,
    this.maxLength,
    this.maxLines,
    this.prefixIcon,
    this.suffixIcon,
    this.isReadOnly,
  });

  final TextEditingController? controller;
  final bool? isReadOnly;
  final String? Function(String?)? validator;
  final String? labelText;
  final String? hintText;
  final int? maxLength;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  State<CustomFieldWidget> createState() => _CustomFieldWidgetState();
}

class _CustomFieldWidgetState extends State<CustomFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      readOnly: widget.isReadOnly ?? false,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
      ),
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      validator: widget.validator,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}
