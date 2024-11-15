import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab11/rounded_corners_provider.dart';
import 'package:provider/provider.dart';

class RoundedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final corners = Provider.of<RoundedCornersProvider>(context);
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(corners.topLeft),
          topRight: Radius.circular(corners.topRight),
          bottomLeft: Radius.circular(corners.bottomLeft),
          bottomRight: Radius.circular(corners.bottomRight),
        ),
      ),
    );
  }
}