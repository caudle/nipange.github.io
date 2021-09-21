import 'package:flutter/material.dart';

import 'package:nipange/presentation/stats/stats_navigator.dart';

import 'host_account/host_account_navigator.dart';
import 'listing/listing_navigator.dart';

class HostPage extends StatefulWidget {
  const HostPage({Key? key}) : super(key: key);

  @override
  _HostPageState createState() => _HostPageState();
}

enum TabItem { listing, stats, account, premium }

class _HostPageState extends State<HostPage> {
  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.listing: GlobalKey<NavigatorState>(),
    TabItem.stats: GlobalKey<NavigatorState>(),
    TabItem.account: GlobalKey<NavigatorState>(),
  };
  TabItem currentTab = TabItem.listing;
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
            _buildOffstageListingNavigator(TabItem.listing),
            _buildOffstageStatsNavigator(TabItem.stats),
            _buildOffstageAccountNavigator(TabItem.account),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.apartment_outlined),
              label: 'Listing',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity),
              label: 'profile',
            ),
          ],
          currentIndex: currentIndex,
          onTap: _selectTab,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: Theme.of(context).iconTheme,
          selectedItemColor: Theme.of(context).primaryColorDark,
        ),
      ),
    );
  }

  Widget _buildOffstageListingNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: ListingNavigator(navigatorKeys[tabItem]!),
    );
  }

  Widget _buildOffstageStatsNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: currentTab != tabItem
          ? SizedBox()
          : StatsNavigator(navigatorKeys[tabItem]!),
    );
  }

  Widget _buildOffstageAccountNavigator(TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: currentTab != tabItem
          ? SizedBox()
          : HostAccountNavigator(navigatorKeys[tabItem]!),
    );
  }
}
