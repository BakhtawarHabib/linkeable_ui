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

class DataScienceServices extends StatefulWidget {
  @override
  _DataScienceServicesState createState() => _DataScienceServicesState();
}

class _DataScienceServicesState extends State<DataScienceServices> {
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
                              "Data Science",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: whitecolor),
                            ),
                            Text(
                              "Internal systems generate nearly 78 percent of\nthe input data utilized in data science.",
                              style: TextStyle(fontSize: 11, color: whitecolor),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          "images/datascience.png",
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
                          itemCount: datascienceservices.length,
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
                                              datascienceservicesimgs[index]),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  datascienceservices[index],
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
