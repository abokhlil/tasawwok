import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.iconData,
      required this.controller,
      required this.valid,
      required this.isNumber,
      this.obscureText,
      this.onTapIcon});
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? controller;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        obscureText: obscureText == null || obscureText == false ? false : true,
        validator: valid,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 35),
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(labelText),
          ),
          suffixIcon: InkWell(
            child: Icon(iconData),
            onTap: onTapIcon,
          ),
        ),
      ),
    );
  }
}
