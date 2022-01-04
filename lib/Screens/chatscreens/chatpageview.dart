import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:linkable_ui/Screens/chatscreens/reciverwidget.dart';
import 'package:linkable_ui/Screens/chatscreens/senderwidget.dart';
import 'package:linkable_ui/Screens/linkeableworkspace.dart';
import 'package:linkable_ui/constants/colors.dart';
import 'package:linkable_ui/constants/strings.dart';
import 'package:linkable_ui/widgets/backbutton.dart';

class GroupChatView extends StatefulWidget {
  @override
  _GroupChatViewState createState() => _GroupChatViewState();
}

class _GroupChatViewState extends State<GroupChatView> {
  TextEditingController _text = new TextEditingController();
  ScrollController _scrollController = ScrollController();
  var childList = <Widget>[];

  @override
  void initState() {
    super.initState();

    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'Hi...',
        time: '9:22 AM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'OK \nI will be here ...',
        time: '9:23 AM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content: 'I am busy with my boss I will getyou in a while. NM',
        time: '9:23 AM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(1, 0),
      child: SendedMessageWidget(
        content: 'Ok take your time',
        time: '22:40 PM',
      ),
    ));
    childList.add(Align(
      alignment: const Alignment(-1, 0),
      child: ReceivedMessageWidget(
        content:
            'Hey I am here. Can we start the meeting do dicuss the details...',
        time: '9:57 PM',
      ),
    ));
  }

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
                      children: [
                        const CustomBackButton(),
                        Column(
                          children: [
                            const Text(
                              "Linkeble App & Web Workplace",
                              style: TextStyle(fontSize: 16, color: whitecolor),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: List.generate(
                                      4,
                                      (index) => Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: CircleAvatar(
                                              maxRadius: 10,
                                              backgroundImage: AssetImage(
                                                chatlist[index],
                                              ),
                                            ),
                                          )),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: iconcolor, shape: BoxShape.circle),
                                  height: 18.h,
                                  width: 18.w,
                                  child: const Text(
                                    "+2",
                                    style: TextStyle(
                                        color: whitecolor,
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.to(() => Linkeableworkspace());
                                },
                                child: Image.asset(
                                  "images/info.png",
                                  height: 21.h,
                                  width: 21.w,
                                )),
                          ],
                        ),
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
                          controller: _scrollController,
                          // reverse: true,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: childList,
                          )),
                    ),
                  ),
                  const Divider(height: 0, color: Colors.black26),
                  Container(
                    color: whitecolor,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        maxLines: 20,
                        controller: _text,
                        decoration: InputDecoration(
                            suffixIcon: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    "images/attachment.png",
                                  ),
                                ),
                                Image.asset("images/send.png"),
                                SizedBox(
                                  width: 20.w,
                                )
                              ],
                            ),
                            border: InputBorder.none,
                            hintText: "Type a message...",
                            hintStyle: GoogleFonts.lato(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffBCC0C2))),
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
