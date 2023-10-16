import 'package:flutter/material.dart';
import 'package:videocall_app/const/colors.dart';

class CustomButton extends StatelessWidget {
  //final nepromenljica konstanta,
  //TODO: oguglajte razliku imeđu final i const
  final String text;

  const CustomButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          /* 
          foregroundColor: Colors.yellow,
          backgroundColor: Colors.red, 
          ovako se radi da nismo pravili buttonColor u const.dart
          */
          //ako učite iz starijih tut pisaće primary,secondard
          //imaćete grešku, samo migrate to i mirna glava
          backgroundColor: buttonColor,
          minimumSize: const Size(
              //max dužina ekrana tj cela dužina, 55 px visina
              //pređi kursorom preko Size nemo da te mrzi
              double.infinity,
              55),
          //OBLIK DUGMETA
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
