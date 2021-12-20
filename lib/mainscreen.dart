import 'package:flutter/material.dart';
import 'package:saving_app/homescreen.dart';
import 'package:saving_app/portofolio_screen.dart';
import 'package:saving_app/theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomeScreen();
          break;
        case 1:
          return PortofolioScreen();
          break;
        case 2:
          return PortofolioScreen();
          break;
        case 3:
          return PortofolioScreen();
          break;

        default:
          return HomeScreen();
      }
    }

    Widget navBar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.home_outlined,
                color: currentIndex == 0 ? kBlue : Color(0xffABABAB),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note,
                color: currentIndex == 1 ? kBlue : Color(0xffABABAB),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: currentIndex == 2 ? kBlue : Color(0xffABABAB),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: currentIndex == 3 ? kBlue : Color(0xffABABAB),
              ),
              label: '',
            ),
          ],
          currentIndex: currentIndex,
          showUnselectedLabels: true,
          onTap: (value) {
            print(value);
            setState(() {
              currentIndex = value;
            });
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: body(),
      bottomNavigationBar: navBar(),
    );
  }
}
