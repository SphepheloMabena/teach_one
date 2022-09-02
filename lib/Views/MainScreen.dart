
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';




import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:teach_one/Models/AppColors.dart';
import 'package:teach_one/Views/Events.dart';
import 'package:teach_one/Views/Settings.dart';

import 'Discover.dart';
import 'Interact.dart';

// @dart=2.9
class MainScreen extends StatefulWidget  {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  var _selectedIndex = 0;
  late MotionTabController _tabController;
   Column _body = Interact().getWidget();
  @override
  void initState() {
    super.initState();
    _tabController = new MotionTabController(initialIndex:1,vsync: this,length: 4);
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body,
      bottomNavigationBar: MotionTabBar(
        labels: [
          "Discover","Interact","Events", "Settings"
        ],
        initialSelectedTab: "Discover",
        tabIconColor: Colors.black,
        tabSelectedColor: HexColor(AppColors.mainColor),
        onTabItemSelected: (int value){
          print(value);
          setState(() {
            if(value == 1){
              _body = Interact().getWidget();
            } else if (value == 0){
              _body = Discover().getWidget();
            } else if (value == 2) {
              _body = OneEvents().getWidget();
            }
            else if (value == 3){
              _body = AppSettings().getWidget();
            }
            _tabController.index = value;
          });
        },
        icons: [
          Icons.lightbulb,Icons.group,Icons.event, Icons.settings
        ],
        textStyle: TextStyle(color: HexColor(AppColors.mainColor)),
      ),
    );
  }
}
