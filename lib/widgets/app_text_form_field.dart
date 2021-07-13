import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color_theme.dart';

class AppTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final TextInputType? textInputType;
  final TextDirection? textDirection;
  final IconData? suffix;
  final IconData? prefix;
  final bool isPassword;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onSubmit;
  final FloatingLabelBehavior? floatingLabelBehavior;


   AppTextFormField({
      this.hintText,
      this.labelText,
      this.textInputType,
      this.suffix,
      this.prefix,
      this.validator,
      this.onTap,
      this.onSubmit,
      this.onChanged,
      this.isPassword= false,
     this.floatingLabelBehavior,
     this.textDirection = TextDirection.ltr,
   });

   var controller = TextEditingController();
   String? getText;

   @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:textInputType,
      onSaved: (newValue) => getText=newValue.toString(),
      validator:validator,
      onTap: onTap,
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      obscureText: isPassword,
      decoration:InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintTextDirection: textDirection,
        floatingLabelBehavior: floatingLabelBehavior,
        suffixIcon:Icon(suffix,),
        prefixIcon: Icon(prefix ,),
        border: OutlineInputBorder()
      ),
      cursorColor:kBlack,
      textDirection:textDirection ,
    );
  }
}


// (value){
// if(value!.isEmpty){
// return kEmailNullError;
// }
// else if(!emailValidatorRegExp.hasMatch(value)
// && !errors.contains(kInvalidEmailError)){
// return kInvalidEmailError;
// }
// return null;
// },