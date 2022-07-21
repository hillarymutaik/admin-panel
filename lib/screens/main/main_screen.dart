import 'package:car_wash/controllers/MenuController.dart';
import 'package:car_wash/responsive.dart';
import 'package:car_wash/screens/dashboard/dashboard_screen.dart';
import 'package:car_wash/screens/dashboard/components/modules.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _ComplexDrawerPageState createState() => _ComplexDrawerPageState();
}

  class _ComplexDrawerPageState extends State<MainScreen> with SingleTickerProviderStateMixin{
        int active = 0;
        late TabController tabController = TabController(length: 5,vsync: this,initialIndex: 0);
      //TODO: Add title
        @override
        void initState() {
        super.initState();
        tabController = TabController(length: 5, vsync: this, initialIndex: 0)
        ..addListener(() {
        setState(() {
        active = tabController.index;
        });
        });
        }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            // Expanded(
            //   // It takes 5/6 part of the screen
            //   flex: 5,
            //   child: DashboardScreen(),
            // ),

            Expanded(
              flex: 5,
             child: TabBarView(controller: tabController,
                children: <Widget>[
                DashboardScreen(),
                ModulesScreen(),
                Container(child: Text('Page 3'),),
                Container(child: Text('Page 4'),),
                Container(child: Text('Page 5'),),
            ],),
            )

          ],
        ),
      ),
    );
  }
}
