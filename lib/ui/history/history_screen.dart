import 'package:dajek_driver/widget/tabbar_menu.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0.5,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 20, left: 13),
            child: Text(
              'History',
              style: categoryText,
            ),
          ),
        ),
      ),
      body: TabBarMenu(),
    );
  }
}
