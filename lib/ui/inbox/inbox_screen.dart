import 'package:dajek_driver/ui/chat/chat_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

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
              'Inbox',
              style: categoryText,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          children: [

            ///Row 1
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ChatScreen();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kurniawan",
                            style: incomeTextActive,
                          ),
                          Text(
                            "Hello mang ojek,, bisa order sekarang ..",
                            style: locationText,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "5 Min ago",
                      style: timeText,
                    )
                  ],
                ),
              ),
            ),
            Divider(thickness: 1,),

            ///Row 2
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ChatScreen();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alex Johnson",
                            style: incomeTextActive,
                          ),
                          Text(
                            "Saya tunggu ya..",
                            style: locationText,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "10 Min ago",
                      style: timeText,
                    )
                  ],
                ),
              ),
            ),
            Divider(thickness: 1,),
          ],
        ),
      ),
    );
  }
}
