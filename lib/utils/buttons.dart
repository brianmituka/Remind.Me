import 'package:flutter/material.dart';
import 'colours.dart';

class PlainButton extends StatelessWidget{
  final GestureTapCallback tap;
  final String displayText;
  final double width;
  final Color bgColour;
  PlainButton({this.displayText, this.tap, this.width, this.bgColour});
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: width!=null ? width : 60.0,
      color: bgColour!=null?bgColour:colours.mainColour,
      child: Center(
        child: InkWell(
          onTap: tap,
          child: Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(displayText,
            //  style: TextStyle(
            //   color: Colors.white
            // ),
            ) ,
          ),
        )
      ),
    );
  }
}