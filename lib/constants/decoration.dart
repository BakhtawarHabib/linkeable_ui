import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkable_ui/constants/colors.dart';

final Decoration decoration = BoxDecoration(
  color: whitecolor,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      blurRadius: 2.0, // has the effect of softening the shadow
      spreadRadius: 1.0, // has the effect of extending the shadow
      offset: const Offset(
        2.0, // horizontal, move right 10
        2.0, // vertical, move down 10
      ),
    )
  ],
);
