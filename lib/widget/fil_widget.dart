import 'package:flutter/material.dart';

class FilWidget extends StatelessWidget {
  final bool obscure;
  final String hintText;
  final Icon icon;
  const FilWidget({Key? key, this.obscure = false, required this.hintText, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xffE3F4FF),
        prefixIcon: icon,
        suffixIcon: obscure
            ? const Icon(
                Icons.remove_red_eye,
                color: Colors.black,
              )
            : null,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffE3F4FF),width: 0),
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff0098FD),width: 2),
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
