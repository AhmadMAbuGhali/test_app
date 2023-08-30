import 'package:flutter/material.dart';


class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final IconData? iconData;

  final TextEditingController? myController;
  final bool? hidepassword;
  Function()? pressSuffixIcon;
  TextInputType? textInputType;
  final Function(String?)? validator;

  CustomTextFormAuth(
      {super.key,
        required this.hintText,
        this.labelText,
        this.iconData,
        this.myController,
        this.textInputType,
        this.pressSuffixIcon,
        this.validator,
        this.hidepassword});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: TextFormField(
            cursorColor: Colors.green,
            keyboardType: textInputType,
            obscureText: hidepassword ?? false,
            controller: myController,
            focusNode: FocusNode(),
            validator: (value) => validator != null ? validator!(value) : null,

            autovalidateMode: AutovalidateMode.disabled,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10)),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              suffixIcon: IconButton(
                icon: Icon(
                  iconData,
                  //   color: ColorManager.primary,
                ),
                onPressed: pressSuffixIcon,
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                    color: Colors.red, width: 1.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

}
