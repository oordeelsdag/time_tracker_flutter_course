import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(assetName != null),
        assert(text != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(
                child: Image.asset(assetName),
                opacity: 0.0,
              ),
            ],
          ),
          primaryColor: color,
          onPrimaryColor: textColor,
          onPressed: onPressed,
        );
}
