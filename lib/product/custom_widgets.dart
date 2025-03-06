import 'package:flutter/material.dart';
import 'package:getir_app/view/gift_page.dart';
import 'package:getir_app/view/home_page.dart';
import 'package:getir_app/view/profile_page.dart';
import 'package:getir_app/view/search_page.dart';

import '../product/colors.dart';
import '../product/images.dart';

class CustomWidgets extends StatefulWidget {
  const CustomWidgets({super.key});

  @override
  State<CustomWidgets> createState() => _CustomWidgetsState();

  static PreferredSizeWidget getAppBar(
    String title,
    Color titleColor,
    double titleSize,
    FontWeight titleFontWeight,
  ) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            color: titleColor,
            fontSize: titleSize,
            fontWeight: titleFontWeight,
            letterSpacing: 0.001),
      ),
      centerTitle: true,
      backgroundColor: AppColors.getirColor,
    );
  }
}

class _CustomWidgetsState extends State<CustomWidgets>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: SizedBox(
          width: 70,
          height: 65,
          child: FloatingActionButton(
            onPressed: () {
              //_tabController.animateTo(2);
            },
            shape: CircleBorder(),
            backgroundColor: AppColors.getirColor,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          height: 55,
          child: TabBar(
            indicatorColor: AppColors.getirColor,
            indicatorPadding: EdgeInsets.only(bottom: -12),
            controller: _tabController,
            dividerColor: Colors.transparent,
            onTap: (index) {
              setState(
                  () {}); // Sayfa değiştiğinde setState çağrısı ile renk güncellenir
            },
            tabs: [
              customTab(Images.home, 0),
              customTab(Images.search, 1),
              customTab(Images.person, 2),
              customTab(Images.gift, 3),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomePage(),
            SearchPage(),
            ProfilePage(),
            GiftPage(),
          ],
        ),
      ),
    );
  }

  Widget customTab(String imagePath, int index) {
    return Tab(
      icon: Image.asset(
        imagePath,
        width: 30,
        height: 30,
        color: _tabController.index == index
            ? AppColors.getirColor
            : Colors.grey, // Renk değişikliği burada
      ),
    );
  }
}
