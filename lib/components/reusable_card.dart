import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.whenTapped});

  final Color colour;
  final Widget cardChild;
  final Function whenTapped;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenTapped,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
