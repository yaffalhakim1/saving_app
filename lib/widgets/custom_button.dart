import 'package:flutter/material.dart';
import 'package:saving_app/theme.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  final double height;
  final Color color;
  final String image;
  const CustomButton(
      {Key key,
      this.text,
      this.onPressed,
      this.height,
      this.width,
      this.color,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        width: width,
        height: height,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image != null
                  ? Image.asset(
                      image,
                      height: 24,
                      width: 24,
                    )
                  : const SizedBox(),
              SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: semiboldTextStyle.copyWith(
                    color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
