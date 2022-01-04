import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkable_ui/constants/colors.dart';
import 'package:linkable_ui/constants/strings.dart';

class ScheduledTabScreen extends StatelessWidget {
  const ScheduledTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
            children: List.generate(
                2,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            height: 164.h,
                            decoration: BoxDecoration(
                                color: activeiconcolor.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          maxRadius: 30,
                                          backgroundImage:
                                              AssetImage("images/img3.png"),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Johnathen",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: whitecolor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                "USA",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: whitecolor,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: whitecolor),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SvgPicture.asset(
                                                  "images/calender.svg",
                                                  height: 12.h,
                                                ),
                                                Text(
                                                  ordersdate[index],
                                                  style: const TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                const Text(
                                                  "",
                                                ),
                                              ],
                                            ),
                                            height: 30.h,
                                            width: 140.w,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: activeiconcolor),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "Completed",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: whitecolor,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            height: 30.h,
                                            width: 140.w,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      orderspic[index],
                                      height: 74.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            ordersprices[index],
                                            style: const TextStyle(
                                                fontSize: 20,
                                                color: whitecolor,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            ordersdescription[index],
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: whitecolor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                    ))),
      ),
    );
  }
}
