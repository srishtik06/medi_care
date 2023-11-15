import 'package:flutter/material.dart';
import 'package:medi_cal/HomePage.dart';
import 'package:medi_cal/DoctorsPage.dart';
import 'package:medi_cal/CartPage.dart';
import 'package:medi_cal/ProfilePage.dart';
import 'package:medi_cal/ProfilePage.dart';

class AppAfterLogin extends StatefulWidget {
  const AppAfterLogin({Key? key}) : super(key: key);

  @override
  State<AppAfterLogin> createState() => _AppAfterLoginState();
}

class _AppAfterLoginState extends State<AppAfterLogin> {

  int currentIndex = 0;

  final screens = const [
    HomePage(),
    DoctorsPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return Scaffold(

      body: SafeArea(
          child: screens[currentIndex]),

      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,

        currentIndex: currentIndex,

        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },

        selectedItemColor: Color(0xff50A5AE),

        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon _estate_.png',
              color: currentIndex == 0 ? Color(0xff50A5AE) : Colors.grey  ,scale: 5,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon _Stethoscope_.png',
              color: currentIndex == 1 ? Color(0xff50A5AE) : Colors.grey  ,scale: 5,),
            label: 'Doctor',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon _shopping-cart_.png',
              color: currentIndex == 2 ? Color(0xff50A5AE) : Colors.grey  ,scale: 5,),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon _user_.png',
              color: currentIndex == 3 ? Color(0xff50A5AE) : Colors.grey  ,scale: 5,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}