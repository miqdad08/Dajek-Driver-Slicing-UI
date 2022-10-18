import 'package:dajek_driver/utils/constant.dart';
import 'package:dajek_driver/widget/map.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: const SafeArea(
            ///Button Back & Search
            child: TopBody(),
          ),
        ),
      ),
      body: const MapWidgetWoMarker(),
    );
  }
}

class TopBody extends StatefulWidget {
  const TopBody({Key? key}) : super(key: key);

  @override
  State<TopBody> createState() => _TopBodyState();
}

class _TopBodyState extends State<TopBody> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    decoration: const BoxDecoration(
                        color: red1, shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Balance",
                        style: textMyBalance,
                      ),
                      Text(
                        "\$59.55",
                        style: incomeTextActive,
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "OFFLINE",
                    style: incomeTextActive,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
