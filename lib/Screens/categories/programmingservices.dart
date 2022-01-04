import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linkable_ui/constants/colors.dart';
import 'package:linkable_ui/constants/strings.dart';
import 'package:linkable_ui/widgets/allparticipentswidget.dart';
import 'package:linkable_ui/widgets/backbutton.dart';
import 'package:linkable_ui/widgets/customsearchtextfield.dart';

class ProgrammingServices extends StatefulWidget {
  @override
  _ProgrammingServicesState createState() => _ProgrammingServicesState();
}

class _ProgrammingServicesState extends State<ProgrammingServices> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: backgroundcolor),
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomBackButton(),
                        Text(
                          "Services",
                          style: TextStyle(fontSize: 16, color: whitecolor),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                  const Center(child: CustomSearchtextfield()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Programming services",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: whitecolor),
                            ),
                            Text(
                              "It’s all about 0’s and 1’s.",
                              style: TextStyle(fontSize: 11, color: whitecolor),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          "images/programming.png",
                          height: 73.h,
                          width: 73.w,
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: backgroundcolor,
                        ),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent:
                                185, // here set custom Height You Want
                          ),
                          itemCount: programmingservices.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  height: 131.h,
                                  width: 181.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(23),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              activeiconcolor.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 30,
                                          offset: const Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      image: DecorationImage(
                                          image: AssetImage(
                                              programmingservicesimgs[index]),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  programmingservices[index],
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: whitecolor),
                                )
                              ],
                            );
                          },
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
