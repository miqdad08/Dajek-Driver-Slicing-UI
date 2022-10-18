import 'package:dajek_driver/widget/list_history.dart';
import 'package:flutter/material.dart';

import '../ui/chat/chat_screen.dart';
import '../ui/history/detail_history.dart';
import '../utils/constant.dart';

class TabBarMenu extends StatefulWidget {
  const TabBarMenu({super.key});

  @override
  _TabBarMenuState createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Tab> myTab = [
    Tab(
      text: 'Dajek',
    ),
    Tab(
      text: 'Dacar',
    ),
    Tab(
      text: 'Dafood',
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          children: [
            // give the tab bar a height [can change height to preferred height]
            Container(
              height: 65,
              decoration: BoxDecoration(
                  border: Border.all(color: lightGrey, width: 2),
                  color: lightGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(40))),
              child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: red1,
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                  ),
                  labelColor: Colors.white,
                  labelStyle: foodPriceText,
                  unselectedLabelColor: Colors.grey,
                  tabs: myTab),
            ),
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                controller: _tabController,
                children: [
                  _dajek(context),
                  _dacar(),
                  _dafood()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _dajek(BuildContext context){

  return ListHistory();
}

Widget _dacar(){
  return ListHistory();
}

Widget _dafood(){
  return ListHistory();
}