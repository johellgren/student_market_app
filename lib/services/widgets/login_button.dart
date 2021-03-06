import "package:flutter/material.dart";

class LoginButton extends StatelessWidget {
  final Color iconColor;
  final String text;
  final IconData iconData;
  final Function function;

  LoginButton({this.iconColor, this.text, this.iconData, this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
          color: Colors.white,
          highlightColor: Colors.orange[300],
          elevation: 4,
      padding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: function,
      child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(5),),
          Icon(iconData, color: iconColor,),
          SizedBox(
            width: 10,
          ),
          Text(text, style: TextStyle( fontSize: 22, letterSpacing: 1),)
        ],
      ),
    ));
  }
}
