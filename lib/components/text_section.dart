import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  final appWidth = 350.0;
  final middleSectionHeight = 110.0;

// this const is inside the class so it needs to be "static const"
// _hPad = horizontal Padding
  static const double _hPad = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            // padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4),
            padding: EdgeInsets.all(10.0),
            child: Text(_title),
            width: appWidth / 2,
            height: middleSectionHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70.0),
                bottomLeft: Radius.circular(70.0),
                topLeft: Radius.circular(70.0),
                topRight: Radius.circular(70.0),
              ),
              color: Color(0xffA4B0BD),
            ),
          ),
          Container(
            // padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
            padding: EdgeInsets.all(10.0),

            child: Text(_body),
            width: appWidth / 2,
            height: middleSectionHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70.0),
                bottomLeft: Radius.circular(70.0),
                topLeft: Radius.circular(70.0),
                topRight: Radius.circular(70.0),
              ),
              color: Color(0xff99AAAB),
            ),
          ),
        ],
      ),
    );
  }
}
