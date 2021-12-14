import 'package:flutter/material.dart';
import 'package:my_cupboard/ui/widgets/custom_input.dart';

class CustomSearchInput extends StatefulWidget {
  const CustomSearchInput({
    Key? key,
    required this.hint,
    required this.onSearch,
    this.canCancel = true,
    this.controller,
    this.title,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? title;
  final Function(String) onSearch;
  final bool canCancel;
  final String hint;

  @override
  _CustomSearchInputState createState() => _CustomSearchInputState();
}

class _CustomSearchInputState extends State<CustomSearchInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInput(
          title: widget.title,
          placeHolder: widget.hint,
          controller: widget.controller,
          suffixWidget: IconButton(
            icon: const Icon(Icons.search, color: Colors.black, size: 19),
            onPressed: _onSearch,
          ),
          key: const Key('inp-sniffle-search-input-search'),
        ),
      ],
    );
  }

  void _onSearch() {
    widget.onSearch(widget.controller!.text);
  }
}
