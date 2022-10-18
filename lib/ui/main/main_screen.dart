
import 'package:dajek_driver/ui/history/history_screen.dart';
import 'package:dajek_driver/ui/main/home/home_screen.dart';
import 'package:dajek_driver/ui/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import '../../assets/icons/icons.dart';
import '../../utils/constant.dart';
import '../inbox/inbox_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  int _selectedIndex = 0;

  Widget body() {
    switch (_selectedIndex) {
      case 0:
        return HomeScreen();
        break;
      case 1:
        return InboxScreen();
        break;
      case 2:
        return HistoryScreen();
        break;
      case 3:
        return ProfileScreen();
        break;
      default:
        return HomeScreen();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      bottomNavigationBar: Container(
        height: 85,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,

          type: BottomNavigationBarType.fixed,
          unselectedItemColor: grey1,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconHome.notification,),
              label: 'Notif',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconHome.transaction),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconHome.profil2),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: red1,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}