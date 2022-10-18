
import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
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
      body: Stack(children: [
        _midBody(),
        _bottomBody(),
      ]),
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
          Image.asset(
            profil,
            width: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Alex Johnson",
                style: categoryText,
              ),
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: darkGrey1,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Online",
                    style: myLocText,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    ],
  );
}

Widget _midBody() {
  return Expanded(
    child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        _itemChat(chat: 1,message: "Pagi mang, bisa order kah?.\n saya sudah set locnya ya..",),
        _itemChat(message: "Sankyuu mang...", chat: 1),
        _itemChat(message: "Bisa mas, mohon di tunngu ya\nsaya sedang putbal...", chat: 0),
      ],
    ),
  );
}

Widget _bottomBody() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type your message...',
                  hintStyle: myLocText,
                  contentPadding: const EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: lineGrey, width: 2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: lineGrey, width: 2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 15,),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: red1
              ),
              child: const Icon(Icons.send, size: 25, color: Colors.white,),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _itemChat({required String message, required int chat}) {
  return Row(
    mainAxisAlignment:
    chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Flexible(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
            decoration: BoxDecoration(
                color: chat == 0 ? lightPeach : Colors.white,
                borderRadius: chat == 0
                    ? const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                )
                    : const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
            child: Text(message, style: myLocText,),
          ))
    ],
  );
}
