import 'package:dajek_driver/model/history_model.dart';
import 'package:dajek_driver/ui/history/detail_history.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';

class ListHistory extends StatelessWidget {
  const ListHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return ListView.builder(
      itemCount: historyList.length,
        itemBuilder: (context, index) {
      final HistoryModel history = historyList[index];
      return Column(
        children: [
          ///Row 1
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailHistory(history: history,);
              }));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          history.customer,
                          style: incomeTextActive,
                        ),
                        Text(
                          history.status,
                          style: history.status == "FAILED" ? failedText : completeText,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        history.time,
                        style: timeText,
                      ),
                      Text(
                        history.income,
                        style: history.income == "\$59.53"? incomeTextUnActive : incomeTextActive,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1,
          ),
        ],
      );
    });
  }
}
