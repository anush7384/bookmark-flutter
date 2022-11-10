// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../screens/bottomsheet/widgets/bottom_sheet_name.dart';
import '../../screens/bottomsheet/widgets/bottom_sheet_title.dart';
import '../../screens/login/widgets/login_button.dart';

void showModal(
    {required BuildContext context,
    required String title,
    required String logintext,
    required Widget middlewidget}) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
            child: SheetName(title: title),
          ),
          
          middlewidget,
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
            child: MyLoginButton(text: logintext),
          ),
        ]);
      });
}
