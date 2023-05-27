import 'package:flutter/material.dart';
import '../config/my_colors.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final VoidCallback onPress;
  final bool isLoading;
  const MyButton(
      {super.key,
        required this.btnName,
        required this.onPress,
        this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 60,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: blueColor,
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          isLoading == true
              ? CircularProgressIndicator(
            color: whiteColor,
          )
              : Text(
            btnName,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(color: whiteColor),
          ),
        ]),
      ),
    );
  }
}