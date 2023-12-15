import 'package:flutter/material.dart';
import 'package:flutterapp1/pages/archivePage.dart';
import 'package:flutterapp1/pages/eventDetails.dart';
//import 'package:flutterapp1/pages/eventDetails.dart';
import 'package:flutterapp1/pages/homePage.dart';
import 'package:flutterapp1/pages/resourcesPage.dart';
import 'package:flutterapp1/pages/servicePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            margin: EdgeInsets.only(left: 10),
            child: Image.asset("lib/assets/images/avatar.jpg")),
        title: const Column(
          children: [
            Text(
              "Hello John,",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),

      // NavigationBar Example

      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.amber),
        selectedLabelStyle: TextStyle(color: Colors.amber),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        //fixedColor: Colors.amber,
        currentIndex: _currentIndex,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service_outlined,),
            label: 'Services'
          ),
          BottomNavigationBarItem(
            icon: Image.asset("lib/assets/images/resources.png"),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("lib/assets/images/archives.png"),
            label: 'Archives',
          )
        ],
        //indicatorShape: ShapeBorder,

        //indicatorColor: Color.fromARGB(255, 242, 218, 145),
        elevation: 40,
        //animationDuration: const Duration(milliseconds: 1000),
        // destinations: const <Widget>[
        //   NavigationDestination(
        //     icon: Icon(Icons.home_outlined),
        //     label: 'Home',
        //   ),
        //   NavigationDestination(
        //     icon: Icon(Icons.home_repair_service_outlined),
        //     label: 'Services',
        //   ),
        //   NavigationDestination(
        //     icon: Icon(Icons.book),
        //     label: 'Resources',
        //   ),
        //   NavigationDestination(
        //     icon: Icon(Icons.archive_outlined),
        //     label: 'Archives',
        //   ),
        // ],

        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        //_selectedIndex: currentPageIndex,
      ),
      body: <Widget>[
        const HomePage(),
        const ServicePage(),
        const ResourcesPage(),
        const ArchivesPage()
      ]
      [_currentIndex],
    );
  }
}
