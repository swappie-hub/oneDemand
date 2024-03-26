import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ondemand/utils/app_sizes.dart';
import 'package:ondemand/utils/colors.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/home_tab.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/library_tab.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/playlist_tab.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/profile_tab.dart';
import 'package:ondemand/view/screens/bottomNavigation/tabs/saved_tab.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: getView(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF27272A),
        // fixedColor: Color(0xFF27272A),
        unselectedItemColor: Color(0xFF615E5E),
        // backgroundColor: bgColor,
        // fixedColor: bgColor,

        selectedLabelStyle: TextStyle(
          fontSize: 10,
          color: Color(0xFF1397CD),
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          color: Color(0xFF615E5E),
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: bgColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF27272A),
            icon: Image.asset(
              "assets/icons/home.png",
              height: 17.h,
              color:
                  _selectedIndex == 0 ? Color(0xFF1397CD) : Color(0xFF615E5E),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF27272A),
            icon: Image.asset(
              "assets/icons/library.png",
              height: 17.h,
              color:
                  _selectedIndex == 1 ? Color(0xFF1397CD) : Color(0xFF615E5E),
            ),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF27272A),
            icon: Image.asset(
              "assets/icons/saved.png",
              height: 17.h,
              color:
                  _selectedIndex == 2 ? Color(0xFF1397CD) : Color(0xFF615E5E),
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF27272A),
            icon: Image.asset(
              "assets/icons/playlist.png",
              height: 17.h,
              color:
                  _selectedIndex == 3 ? Color(0xFF1397CD) : Color(0xFF615E5E),
            ),
            label: 'Playlists',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF27272A),
            icon: Image.asset(
              "assets/icons/profile.png",
              height: 17.h,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF1397CD),
        onTap: _onItemTapped,
      ),
    );
  }

  Widget getView(int index) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return LibraryView();
      case 2:
        return SavedTab();
      case 3:
        return PlaylistTab();
      case 4:
        return ProfileTab();

      default:
        return HomeView();
    }
  }
}
