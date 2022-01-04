import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkable_ui/constants/colors.dart';

class SendedMessageWidget extends StatelessWidget {
  final String content;
  final String time;

  SendedMessageWidget({
    required this.content,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 8.0, left: 50.0, top: 4.0, bottom: 4.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(0)),
              child: Container(
                color: activeiconcolor,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 12.0, left: 23.0, top: 8.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        content,
                        style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: whitecolor),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            time,
            style: GoogleFonts.lato(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: const Color(0xffBCC0C2)),
          ),
        ),
      ],
    );
  }
}
