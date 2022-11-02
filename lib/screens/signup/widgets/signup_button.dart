import 'package:bookmark/utils/color_constants.dart';
import 'package:flutter/material.dart';

class SignupButton extends StatefulWidget{

  const SignupButton({super.key});

  @override

  State<SignupButton> createState() => _SignupButton();

}

class _SignupButton extends State<SignupButton>{

  @override

  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width; 
    return(
      SizedBox(
        height:45.0,
        width:width * 1.0,
        child: TextButton(
        onPressed: (){},
        style:  ButtonStyle(
          backgroundColor:  MaterialStatePropertyAll<Color>(blue),
          shape:MaterialStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)))
        ),
        child: const Text('Sign Up',
        style:TextStyle(
          color:Colors.white,
          fontSize: 17.0,
        )
        ) ,)
      )
    );
  }

}