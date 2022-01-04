import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkable_ui/Screens/categories/datascienceservice.dart';

import 'package:linkable_ui/constants/colors.dart';
import 'package:linkable_ui/constants/strings.dart';
import 'package:linkable_ui/widgets/allparticipentswidget.dart';
import 'package:linkable_ui/widgets/backbutton.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
                          "Categories",
                          style: TextStyle(fontSize: 16, color: whitecolor),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      color: iconcolor,
                      thickness: 1.5,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: backgroundcolor,
                        ),
                        child: ListView.builder(
                          itemCount: categorieslogo.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        categoriesnavigation[index]));
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          categorieslogo[index],
                                          height: 50.h,
                                          width: 50.w,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                categoriesnames[index],
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: whitecolor),
                                              ),
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              Text(
                                                categoriesdesc[index],
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    color: whitecolor),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Divider(
                                        color: iconcolor,
                                        thickness: 1.5,
                                      )),
                                ],
                              ),
                            );
                          },
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
