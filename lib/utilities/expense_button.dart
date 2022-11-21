import 'package:flutter/material.dart';
//import 'package:order_tracking/colors.dart';

class ExpenseButton extends StatelessWidget {
  const ExpenseButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.width})
      : super(key: key);
  //final Function onPressed;
  final void Function()? onPressed;
  //final VoidCallback? onPressed;
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      width: width,
      // padding: EdgeInsets.only(bottom: 8),
      height: 40,
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 1.0,
            spreadRadius: 0.0,
            offset: Offset(1.0, 1.0), // shadow direction: bottom right
          )
        ],
        // shape: StadiumBorder(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          // side: BorderSide(color: Colors.red)
        ),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.2, 0.8],
            colors: [Colors.red, Colors.red]
            //colors: [sALightBlueShade, salightblue, sALightBlueTint1],
            ),
      ),
      child: MaterialButton(
          // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: const StadiumBorder(),
          onPressed: onPressed,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(0),
          //   // side: BorderSide(color: Colors.red)
          // ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              // fontFamily: "Segoe",
            ),
          )),
    );
  }
}
