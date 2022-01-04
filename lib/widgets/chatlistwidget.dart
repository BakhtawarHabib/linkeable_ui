import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkable_ui/constants/colors.dart';

// ignore: must_be_immutable
class ChatListWidget extends StatelessWidget {
  String image;
  String name;
  String lastmsg;
  String timing;
  Widget? counter;
  ChatListWidget(
      {Key? key,
      required this.image,
      required this.lastmsg,
      required this.name,
      required this.timing,
      this.counter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          height: 65.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: backgroundcolor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                    maxRadius: 30,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style:
                            GoogleFonts.roboto(fontSize: 16, color: whitecolor),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        lastmsg,
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: counter == null ? iconcolor : whitecolor,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  counter == null
                      ? const SizedBox()
                      : Container(
                          alignment: Alignment.center,
                          width: 16.w,
                          height: 16.h,
                          child: Text("2",
                              style: GoogleFonts.roboto(
                                  fontSize: 13, color: whitecolor)),
                          decoration: const BoxDecoration(
                              color: activeiconcolor, shape: BoxShape.circle),
                        ),
                  Text(
                    timing,
                    style: GoogleFonts.roboto(fontSize: 11, color: whitecolor),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 70),
          color: activeiconcolor.withOpacity(0.5),
          height: 1,
        )
      ],
    );
  }
}
