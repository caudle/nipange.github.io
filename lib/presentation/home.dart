import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipange/application/explore/explore_bloc.dart';
import 'package:nipange/application/saved/saved_bloc.dart';
import 'package:nipange/presentation/account/account_navigator.dart';
import 'package:nipange/presentation/saved/saved_navigator.dart';
import 'package:nipange/presentation/saved/saved_page.dart';

import '../injector.dart';
import 'account/account_page.dart';
import 'explore/explore.dart';
import 'explore/explore_navigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

enum TabItem { explore, saved, account }

class _HomePageState extends State<HomePage> {
  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.explore: GlobalKey<NavigatorState>(),
    TabItem.saved: GlobalKey<NavigatorState>(),
    TabItem.account: GlobalKey<NavigatorState>(),
  };
  TabItem currentTab = TabItem.explore;
  int currentIndex = 0;
  void _selectTab(int index) {
    setState(() {
      currentIndex = index;
      currentTab = TabItem.values[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[currentTab]!.currentState!.maybePop(),
      child: Scaffold(
        body: Stack(
          children: [
            _buildOffstageExploreNavigator(TabItem.explore),
            _buildOffstageSavedNavigator(TabItem.saved),
            _buildOffstageAccountNavigator(TabItem.account),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: 'Explore',
                activeIcon: Icon(Icons.explore)),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: 'Saved',
                activeIcon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_outlined),
                label: 'Account',
                activeIcon: Icon(Icons.perm_identity)),
          ],
          currentIndex: currentIndex,
          onTap: _selectTab,
          selectedIconTheme: Theme.of(context).iconTheme,
          //unselectedIconTheme: IconThemeData(color: null),
          selectedItemColor: Theme.of(context).primaryColorDark,
          //unselectedItemColor: ,
        ),
      ),
    );
  }

  Widget _buildOffstageExploreNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: ExploreNavigator(navigatorKeys[tabItem]!),
    );
  }

  Widget _buildOffstageSavedNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: SavedNavigator(navigatorKeys[tabItem]!),
    );
  }

  Widget _buildOffstageAccountNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: AccountNavigator(navigatorKeys[tabItem]!),
    );
  }
}
