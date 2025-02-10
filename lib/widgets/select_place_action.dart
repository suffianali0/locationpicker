import 'package:flutter/material.dart';

class SelectPlaceAction extends StatelessWidget {
  final String locationName;
  final String tapToSelectActionText;
  final VoidCallback onTap;

  SelectPlaceAction(this.locationName, this.onTap, this.tapToSelectActionText);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(locationName, style: TextStyle(fontSize: 16)),
                    Text(this.tapToSelectActionText, style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFF4F46),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(6),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 25,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
