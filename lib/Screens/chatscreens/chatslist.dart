import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkable_ui/Screens/chatscreens/chatpageview.dart';
import 'package:linkable_ui/Screens/chatscreens/userchatscreen.dart';
import 'package:linkable_ui/constants/colors.dart';
import 'package:linkable_ui/constants/strings.dart';
import 'package:linkable_ui/widgets/chatlistwidget.dart';

class ChatListsScreen extends StatefulWidget {
  const ChatListsScreen({Key? key}) : super(key: key);

  @override
  _ChatListsScreenState createState() => _ChatListsScreenState();
}

class _ChatListsScreenState extends State<ChatListsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundcolor,
        appBar: AppBar(
          toolbarHeight: 100,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(
                "images/adjust.png",
                height: 27.h,
                width: 27.w,
              ),
            )
          ],
          backgroundColor: backgroundcolor,
          elevation: 0.0,
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
            child: Text(
              "Chat",
              style: GoogleFonts.roboto(
                fontSize: 20,
              ),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 0),
          decoration: const BoxDecoration(color: backgroundcolor),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Get.to(() => GroupChatView());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    height: 65.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: activeiconcolor.withOpacity(0.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset("images/linkeable.png"),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Linkeble App & Web Workplace",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: whitecolor),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: 'Scarlet Ann:',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Hey! Whatsup? ',
                                          style: TextStyle(
                                              color: iconcolor, fontSize: 16),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "4 members",
                              style: GoogleFonts.roboto(
                                  fontSize: 10, color: iconcolor),
                            ),
                            Text(
                              "10:55 PM",
                              style: GoogleFonts.roboto(
                                  fontSize: 11, color: const Color(0xffD1D1D1)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: chatlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => UserChatScreen());
                            },
                            child: ChatListWidget(
                              image: chatlist[index],
                              lastmsg: chatlistrecentmessages[index],
                              name: chatlistnames[index],
                              timing: chatlisttiming[index],
                              counter: countermsg[index],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
