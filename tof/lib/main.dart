import 'package:flutter/material.dart';
import 'package:tof/initial.page.dart';
import 'package:tof/newspaper.page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tof/profile.page.dart';
import 'map.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: InitialPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          MapPage(),
          NewspaperPage(),
          ProfilePage(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          child: Container(
            color: Color.fromARGB(255, 62, 62, 62),
            child: TabBar(
              labelColor: Color.fromARGB(255, 4, 211, 97),
              unselectedLabelColor: Color.fromARGB(255, 2, 111, 51),
              labelStyle: TextStyle(fontSize: 10.0),
              indicatorColor: Colors.transparent,
              //For Indicator Show and Customization
              tabs: <Widget>[
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.globeAmericas,
                    size: 24.0,
                  ),
                ),
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.newspaper,
                    size: 24.0,
                  ),
                ),
                Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.userAlt,
                    size: 24.0,
                  ),
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
