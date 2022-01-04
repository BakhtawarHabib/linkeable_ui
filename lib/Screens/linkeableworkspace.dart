// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:linkable_ui/constants/colors.dart';
// import 'package:linkable_ui/constants/strings.dart';
// import 'package:linkable_ui/widgets/allparticipentswidget.dart';

// class Expansiontile extends StatefulWidget {
//   @override
//   State<Expansiontile> createState() => _ExpansiontileState();
// }

// class _ExpansiontileState extends State<Expansiontile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundcolor,
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Expansion Tile'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30.0),
//         child: Column(
//           children: <Widget>[
//             const SizedBox(height: 20.0),
//             ExpansionTile(
//               collapsedIconColor: whitecolor,
//               iconColor: whitecolor,
//               textColor: whitecolor,
//               backgroundColor: activeiconcolor.withOpacity(0.5),
//               collapsedBackgroundColor: activeiconcolor.withOpacity(0.5),
//               title: const Text(
//                 "Participents",
//                 style: TextStyle(fontSize: 13.0, color: whitecolor),
//               ),
//               children: <Widget>[
//                 Column(
//                   children: [
//                     Container(
//                       color: Colors.black,
//                       child: ListTile(
//                         leading: Image.asset(
//                           "images/img1.png",
//                           height: 44.h,
//                         ),
//                         title: FittedBox(
//                           child: Row(
//                             children: [
//                               const Text(
//                                 "Thor Oden (App Developer)",
//                                 style: TextStyle(
//                                   color: whitecolor,
//                                   fontSize: 13,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15.w,
//                               ),
//                               const Text(
//                                 "Group Leader",
//                                 style: TextStyle(
//                                     color: whitecolor,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w300),
//                               )
//                             ],
//                           ),
//                         ),
//                         subtitle: const Text(
//                           "Last Seen 12 min ago",
//                           style: TextStyle(
//                               color: whitecolor,
//                               fontSize: 10,
//                               fontWeight: FontWeight.w300),
//                         ),
//                       ),
//                     ),
//                     Container(height: 1, color: iconcolor)
//                   ],
//                 ),
//                 Column(
//                   children: List.generate(
//                       4,
//                       (index) => AllParticipentsWidget(
//                             image: participentimgs[index],
//                             lastseen: participentlastseen[index],
//                             name: participentnames[index],
//                             trailing: morecheck[index],
//                           )),
//                 ),
//                 Container(
//                   color: Colors.black,
//                   child: ListTile(
//                       leading: Image.asset(
//                         "images/add.png",
//                         height: 44.h,
//                       ),
//                       title: Text(
//                         "Add more",
//                         style: GoogleFonts.roboto(
//                           color: whitecolor,
//                           fontSize: 13,
//                         ),
//                       )),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linkable_ui/constants/colors.dart';
import 'package:linkable_ui/constants/strings.dart';
import 'package:linkable_ui/widgets/allparticipentswidget.dart';
import 'package:linkable_ui/widgets/backbutton.dart';

class Linkeableworkspace extends StatefulWidget {
  @override
  _LinkeableworkspaceState createState() => _LinkeableworkspaceState();
}

class _LinkeableworkspaceState extends State<Linkeableworkspace> {
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
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomBackButton(),
                        Text(
                          "Linkeble Work Space",
                          style: TextStyle(fontSize: 16, color: whitecolor),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      height: 6,
                      color: whitecolor,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: backgroundcolor,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30.h,
                            ),
                            Image.asset(
                              "images/linkeable.png",
                              height: 103.h,
                              width: 103.w,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            const Text(
                              "Linkeble App & Web",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: whitecolor),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Text(
                              "4 Members",
                              style: TextStyle(fontSize: 12, color: whitecolor),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ExpansionTile(
                                collapsedIconColor: whitecolor,
                                iconColor: whitecolor,
                                textColor: whitecolor,
                                backgroundColor:
                                    activeiconcolor.withOpacity(0.5),
                                collapsedBackgroundColor:
                                    activeiconcolor.withOpacity(0.5),
                                title: const Text(
                                  "Participents",
                                  style: TextStyle(
                                      fontSize: 13.0, color: whitecolor),
                                ),
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Container(
                                        color: Colors.black,
                                        child: ListTile(
                                          leading: Image.asset(
                                            "images/img1.png",
                                            height: 44.h,
                                          ),
                                          title: FittedBox(
                                            child: Row(
                                              children: [
                                                const Text(
                                                  "Thor Oden (App Developer)",
                                                  style: TextStyle(
                                                    color: whitecolor,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15.w,
                                                ),
                                                const Text(
                                                  "Group Leader",
                                                  style: TextStyle(
                                                      color: whitecolor,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                )
                                              ],
                                            ),
                                          ),
                                          subtitle: const Text(
                                            "Last Seen 12 min ago",
                                            style: TextStyle(
                                                color: whitecolor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ),
                                      Container(height: 1, color: iconcolor)
                                    ],
                                  ),
                                  Column(
                                    children: List.generate(
                                        4,
                                        (index) => AllParticipentsWidget(
                                              image: participentimgs[index],
                                              lastseen:
                                                  participentlastseen[index],
                                              name: participentnames[index],
                                              trailing: morecheck[index],
                                            )),
                                  ),
                                  Container(
                                    color: Colors.black,
                                    child: ListTile(
                                        leading: Image.asset(
                                          "images/add.png",
                                          height: 44.h,
                                        ),
                                        title: Text(
                                          "Add more",
                                          style: GoogleFonts.roboto(
                                            color: whitecolor,
                                            fontSize: 13,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
