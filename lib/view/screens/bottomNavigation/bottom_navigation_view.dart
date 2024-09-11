import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ondemand/domain/providers/firebase_messaging_provider.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _showNotification(message);
    });
  }

// Show the notification's body if available
  void _showNotification(RemoteMessage message) {
    if (message.notification != null) {
      print(
          'Message contained a notification: ${message.notification?.body ?? ""}');
      FirebaseMessagingProvider.showNotification(
          message, message.notification!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => false,
      child: Scaffold(
        backgroundColor: Color(0xFF171718),
        // appBar: AppBar(
        //   title: const Text('BottomNavigationBar Sample'),
        // ),
        body: Center(
          child: getView(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.2))],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 1),
            child: BottomNavigationBar(
              elevation: 10,
      
              backgroundColor: Color(0xFF171718),
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
                    color: _selectedIndex == 0
                        ? Color(0xFF1397CD)
                        : Color(0xFF615E5E),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xFF27272A),
                  icon: Image.asset(
                    "assets/icons/library.png",
                    height: 17.h,
                    color: _selectedIndex == 1
                        ? Color(0xFF1397CD)
                        : Color(0xFF615E5E),
                  ),
                  label: 'Library',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xFF27272A),
                  icon: Image.asset(
                    "assets/icons/saved.png",
                    height: 17.h,
                    color: _selectedIndex == 2
                        ? Color(0xFF1397CD)
                        : Color(0xFF615E5E),
                  ),
                  label: 'Saved',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xFF27272A),
                  icon: Image.asset(
                    "assets/icons/playlist.png",
                    height: 17.h,
                    color: _selectedIndex == 3
                        ? Color(0xFF1397CD)
                        : Color(0xFF615E5E),
                  ),
                  label: 'Playlists',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xFF27272A),
                  icon: Icon(Icons.account_circle,
                      color: _selectedIndex == 4
                          ? Color(0xFF1397CD)
                          : Color(0xFF615E5E)
                      //    Image.asset(
                      //     "assets/icons/profile.png",
                      //     height: 17.h,
                      //  ,
                      ),
                  label: 'Account',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Color(0xFF1397CD),
              onTap: _onItemTapped,
            ),
          ),
        ),
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
