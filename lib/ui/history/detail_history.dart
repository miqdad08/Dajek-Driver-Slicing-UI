import 'package:dajek_driver/model/history_model.dart';
import 'package:dajek_driver/widget/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import '../../utils/constant.dart';

class DetailHistory extends StatelessWidget {
  final HistoryModel history;

  const DetailHistory({Key? key, required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(83),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0.2,
          flexibleSpace: SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: _topBody(context),
          )),
        ),
      ),
      body: Stack(
        children: const [
          MapWidget(),
        ],
      ),
      bottomNavigationBar: BottomBody(history: history),
    );
  }
}

class BottomBody extends StatelessWidget {
  final HistoryModel history;

  const BottomBody({Key? key, required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: const Offset(0.0, 0.0),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              history.status,
              style: history.status == "FAILED"
                  ? failedTextDetail
                  : completeTextDetail,
            ),
            Text(
              history.time,
              style: timeTextDetail,
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_on),
                    Container(
                        height: 40,
                        child: const Dash(
                            direction: Axis.vertical,
                            length: 40,
                            dashLength: 3,
                            dashColor: Colors.grey)),
                    const Icon(
                      Icons.location_on,
                      color: Colors.deepOrange,
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Start",
                                style: textStart,
                              ),
                              Text(
                                history.startTrip,
                                style: tripText,
                              ),
                            ],
                          ),
                          Text(history.startTripTime, style: tripText,)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "End",
                                style: textStart,
                              ),
                              Text(
                                history.endTrip,
                                style: tripText,
                              ),
                            ],
                          ),
                          Text(history.endTripTime, style: tripText,)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 4,
            ),
            Divider(thickness: 1,),
            const Spacer(
              flex: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Price",
                  style: totalPriceText,
                ),

                const SizedBox(
                  width: 15,
                ),
                Text(
                  history.income,
                  style: foodPriceText,
                ),
              ],
            ),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _topBody(BuildContext context) {
  return Column(
    children: [
      Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          const SizedBox(
            width: 5,
          ),
          Text(
            "Detail History",
            style: categoryText,
          ),
        ],
      ),
    ],
  );
}
