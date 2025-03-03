import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultSearchField extends StatefulWidget {
  const DefaultSearchField({super.key});

  @override
  State<DefaultSearchField> createState() => _DefaultSearchFieldState();
}

class _DefaultSearchFieldState extends State<DefaultSearchField> {
  final FocusNode _focusNode = FocusNode();
  bool isFocus = false;

  @override
  void initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod('TextInput.show');
    _focusNode.addListener(() => _onFocusChange());
  }

  void _onFocusChange() {
    setState(() {
      isFocus = !isFocus;
    });
  }

  void _unFocus() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: _focusNode,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[200],
              hintText: "검색어를 입력해주세요",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        // ignore: sized_box_for_whitespace
        Container(
            width: isFocus ? 50 : 0,
            child: isFocus
                ? Center(
                    child: GestureDetector(
                        onTap: _unFocus,
                        child: Text(
                          "취소",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                  )
                : SizedBox()),
      ],
    );
  }
}
