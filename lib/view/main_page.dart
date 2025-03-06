import 'package:flutter/material.dart';
import 'package:getir_app/view/gift_page.dart';
import 'package:getir_app/view/home_page.dart';
import 'package:getir_app/view/profile_page.dart';
import 'package:getir_app/view/search_page.dart';

import '../product/colors.dart';
import '../product/images.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
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
        floatingActionButton: FloatingActionButton(
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
              indicatorColor: AppColors.getirColor,
              controller: _tabController,
              tabs: [
                Tab(
                  icon: Image.asset(
                    Images.home,
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    Images.search,
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    Images.person,
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    Images.gift,
                    width: 30,
                    height: 30,
                    color: Colors.grey,
                  ),
                ),
              ]),
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
}
