import 'package:flutter/material.dart';
import 'package:mediacury_class_dec_2/responsive.dart';
import 'package:mediacury_class_dec_2/view/homescreen/widgets/center_container.dart';
import 'package:mediacury_class_dec_2/view/homescreen/widgets/left_container.dart';
import 'package:mediacury_class_dec_2/view/homescreen/widgets/right_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: Responsive.isLaptop(context) ? null : AppBar(),
      drawer:
          Responsive.isLaptop(context) ? null : Drawer(child: LeftSection()),
      body: Row(
        children: [
          if (Responsive.isLaptop(context))
            Expanded(flex: 2, child: LeftSection()),
          Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CenterSection(),
                    if (Responsive.isMobile(context)) RightSection()
                  ],
                ),
              )),
          if (!Responsive.isMobile(context))
            Expanded(flex: 3, child: RightSection()),
        ],
      ),
    );
  }
}
