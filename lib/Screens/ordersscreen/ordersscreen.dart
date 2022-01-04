import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkable_ui/Screens/chatscreens/chatslist.dart';
import 'package:linkable_ui/Screens/ordersscreen/tabs/completedorders.dart';
import 'package:linkable_ui/constants/colors.dart';

int itemCount = 3;
List<bool> selected = <bool>[];

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    for (var i = 0; i < itemCount; i++) {
      selected.add(false);
    }
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(color: backgroundcolor),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(""),
                  Text(
                    "Orders",
                    style: TextStyle(fontSize: 16, color: whitecolor),
                  ),
                  Text(""),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Divider(
                  thickness: 1.2,
                  color: activeiconcolor,
                ),
              ),
              TabBar(
                indicatorColor: activeiconcolor,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: whitecolor.withOpacity(0.6),
                labelColor: whitecolor,
                labelStyle: TextStyle(fontSize: 13.sp),
                controller: _controller,
                tabs: const [
                  Tab(
                    text: 'Active',
                  ),
                  Tab(
                    text: 'Completed',
                  ),
                  Tab(
                    text: "Cancelled",
                  ),
                  Tab(
                    text: "Rejected",
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    ScheduledTabScreen(),
                    ScheduledTabScreen(),
                    ScheduledTabScreen(),
                    ScheduledTabScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
