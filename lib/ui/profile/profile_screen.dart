
import 'package:dajek_driver/ui/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
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
      body: Column(
        children: [_topBody(), _midBody(context)],
      ),
    );
  }
}

Widget _topBody() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(profil),
              )),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text('Zanal Achmad', style: profilNameText),
      const SizedBox(
        height: 5,
      ),
      Text(
        "A 12345Z",
        style: vehicleLicense,
      )
    ],
  );
}

Widget _midBody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 56,
          decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: lightGrey, width: 1)),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "My Order",
                            style: profilText,
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: darkGrey1,
                        size: 20,
                      ))
                ],
              )),
        ),
        SizedBox(height: 20,),
        Container(
          height: 56,
          decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: lightGrey, width: 1)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My Wallet",
                          style: profilText,
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: darkGrey1,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 56,
          decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: lightGrey, width: 1)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Setting",
                          style: profilText,
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: darkGrey1,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return LoginScreen();
            }));
          },
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: red1),
            child: Center(
                child: Text(
                  "Logout",
                  style: textButtonBoarding,
                )),
          ),
        ),
      ],
    ),
  );
}
