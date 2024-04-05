import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  var selectedIndex = 0;

  final List<Widget> _tabList = const [
    Text(
      'H O M E',
      style: optionStyle,
    ),
    Text(
      'L I K E S',
      style: optionStyle,
    ),
    Text(
      'S E A R C H',
      style: optionStyle,
    ),
    Text(
      'P R O F I L E',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('G O O G L E  N A V  B A R'),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            ),
          ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              tabs: const [
                GButton(
                  gap: 5,
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  gap: 5,
                  icon: Icons.favorite,
                  text: 'Likes',
                ),
                GButton(
                  gap: 5,
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  gap: 5,
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: selectedIndex,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              tabBackgroundColor: Colors.grey[100]!,
              onTabChange: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ),
        body: Center(
          child: _tabList[selectedIndex],
        ),
      ),
    );
  }
}
