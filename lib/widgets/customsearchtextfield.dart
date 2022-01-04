import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkable_ui/constants/colors.dart';

class CustomSearchtextfield extends StatelessWidget {
  const CustomSearchtextfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: activeiconcolor.withOpacity(0.7),
      ),
      width: 356.w,
      child: TextFormField(
        // controller: this.controller,
        validator: (val) =>
            // ignore: prefer_is_empty
            val!.length == 0 ? "fill the field" : null,
        onChanged: (value) {},
        cursorColor: whitecolor,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: whitecolor.withOpacity(0.5)),
          border: InputBorder.none,
          errorStyle:
              const TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
          hintText: "Search for  service here...",
          hintStyle:
              TextStyle(fontSize: 12, color: whitecolor.withOpacity(0.5)),
          contentPadding: const EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}
