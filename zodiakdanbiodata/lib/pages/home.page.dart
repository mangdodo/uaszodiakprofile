import 'package:flutter/material.dart';
import 'Settings.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  String title = "Zodiak Page";
  List<Widget> itemPages = <Widget>[
    Text('Bagian Zodiak'),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(title),
        actions: [Icon(Icons.menu), Icon(Icons.favorite)],
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.star_border_sharp),
            title: Text('scorpio'),
          ),
          ListTile(
            leading: Icon(Icons.star_border_sharp),
            title: Text('leo'),
          ),
          ListTile(
            leading: Icon(Icons.star_border_sharp),
            title: Text('aquarius'),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.stars),
            label: "Zodiak",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

