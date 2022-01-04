import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkable_ui/Screens/categories/categoriesscreen.dart';
import 'package:linkable_ui/Screens/chatscreens/chatslist.dart';
import 'package:linkable_ui/Screens/ordersscreen/ordersscreen.dart';
import 'package:linkable_ui/constants/colors.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _mole = 0;
  // int _currentIndex = 0;
  final tabs = [
    const ChatListsScreen(),
    const ChatListsScreen(),
    OrderScreen(),
    CategoriesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        iconSize: 30.h,
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundcolor,
        currentIndex: _mole,
        onTap: (index) {
          setState(() {
            _mole = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(
                  const AssetImage('images/home.png'),
                  size: 30.sp,
                  color: _mole == 0 ? activeiconcolor : iconcolor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                _mole == 0
                    ? Container(
                        height: 2.h,
                        width: 20.w,
                        color: activeiconcolor,
                      )
                    : const SizedBox()
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(
                  const AssetImage('images/chat.png'),
                  size: 30.sp,
                  color: _mole == 1 ? activeiconcolor : iconcolor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                _mole == 1
                    ? Container(
                        height: 2.h,
                        width: 20.w,
                        color: activeiconcolor,
                      )
                    : const SizedBox()
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(
                  const AssetImage('images/order.png'),
                  size: 30.sp,
                  color: _mole == 2 ? activeiconcolor : iconcolor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                _mole == 2
                    ? Container(
                        height: 2.h,
                        width: 20.w,
                        color: activeiconcolor,
                      )
                    : const SizedBox()
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(
                  const AssetImage('images/account.png'),
                  size: 30.sp,
                  color: _mole == 3 ? activeiconcolor : iconcolor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                _mole == 3
                    ? Container(
                        height: 2.h,
                        width: 20.w,
                        color: activeiconcolor,
                      )
                    : const SizedBox()
              ],
            ),
            label: '',
          ),
        ],
      ),
      body: tabs[_mole],
    );
  }
}
