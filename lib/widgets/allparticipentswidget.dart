import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkable_ui/constants/colors.dart';

class AllParticipentsWidget extends StatelessWidget {
  String image;
  String name;
  String lastseen;
  Widget? trailing;
  AllParticipentsWidget(
      {required this.image,
      required this.lastseen,
      required this.name,
      this.trailing});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: ListTile(
              leading: Image.asset(
                image,
                height: 44.h,
              ),
              title: FittedBox(
                child: Row(
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.roboto(
                        color: whitecolor,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
              ),
              subtitle: Text(
                lastseen,
                style: const TextStyle(
                    color: whitecolor,
                    fontSize: 10,
                    fontWeight: FontWeight.w300),
              ),
              trailing: trailing == null
                  ? const SizedBox()
                  : const Icon(
                      Icons.more_vert,
                      color: whitecolor,
                    )),
        ),
        Container(height: 1, color: iconcolor)
      ],
    );
  }
}
