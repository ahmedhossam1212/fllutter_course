       
import 'package:flutter/material.dart';
import 'package:flutter_course/e-book/appcolors.dart';

void navigateTo (context,widget)=> Navigator.push(context,
    MaterialPageRoute(builder: (context)=>widget,
    ),
);




class TextArt extends StatelessWidget {
  const TextArt({
    super.key,
    required this.text,
    required this.textColor,
  });

  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 20,
      ),
    );
  }
}


Widget defaultFormField({
  required TextEditingController? controller,
  required TextInputType type,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required Function validate,
  required String hint,
  IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
  Widget? widget,
}) =>
    Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              cursorColor: AppColors.textColor,
              style: TextStyle(color: AppColors.textColor),
              readOnly: widget == null ? false : true,
              controller: controller,
              keyboardType: type,
              obscureText: isPassword,
              enabled: isClickable,
              onTap: () {},
              validator: (String? s) {
                return validate(s);
              },
              decoration: InputDecoration(
                fillColor: Colors.grey[150],
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textColor),
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textColor, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.errorRed, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                
                hintText: hint,
                prefixIcon: Icon(
                  prefix,
                  color: AppColors.textColor,
                ),
                hintStyle: TextStyle(
                    color: AppColors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal),
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          widget ?? Container(),
        ],
      ),
    );

