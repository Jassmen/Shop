import 'package:flutter/material.dart';

//********************************************
// Widget defaultButton({
//   double width = double.infinity,
//   Color background = Colors.blue,
//   bool isUpperCase = true,
//   double radius = 0.0,
//   @required String text,
//   @required Function function,
// }) {
//   return Container(
//     width: width,
//     height: 40.0,
//     child: MaterialButton(
//       onPressed: function,
//       child: Text(
//         isUpperCase ? text.toUpperCase() : text,
//         style: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     ),
//     decoration: BoxDecoration(
//       color: background,
//       borderRadius: BorderRadius.circular(radius),
//     ),
//   );
// }


//**************************************
// Widget defaultFormField({
//   @required TextEditingController controller,
//   @required TextInputType type,
//   @required Function validate,
//   @required String label,
//   @required IconData prefix,
//   bool isPassword = false,
//   bool isClickable = true,
//   IconData suffix,
//   Function onTap,
//   Function onSubmit,
//   Function onChange,
// }) {
//   return TextFormField(
//     controller: controller,
//     keyboardType: type,
//     onTap: onTap,
//     obscureText: isPassword,
//     enabled: isClickable,
//     onFieldSubmitted: onSubmit,
//     onChanged: onChange,
//     validator: validate,
//     decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(prefix),
//         suffixIcon: suffix != null ? Icon(suffix) : null,
//         border: OutlineInputBorder()),
//   );
// }
//
//
