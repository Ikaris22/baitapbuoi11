import 'package:flutter/material.dart';
import 'package:baitapbuoi_11/listView.dart';

void main() {
  runApp(const MyHomeWork());
}

class MyHomeWork extends StatelessWidget {
  const MyHomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeWork(),
    );
  }
}

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

  @override
  State<StatefulWidget> createState() => MyApp();
}

class MyApp extends State<HomeWork> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.orange);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'My orders: adnakjhdjew',
      style: optionStyle,
    ),
    Text(
      'My SubScriptions: khjh',
      style: optionStyle,
    ),
    Text(
      'My Addresses: jjks',
      style: optionStyle,
    ),
    Text(
      'FAQ: sfdskdjdk',
      style: optionStyle,
    ),
    Text(
      'Contact Us: hjhjs',
      style: optionStyle,
    ),
    Text(
      'About: jskjkd',
      style: optionStyle,
    ),
    Text(
      'Log: hjhaas',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Fisrt Drawer')],
      )),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Center(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/abcde.jpg', height: 70),
                const Text('Vo Minh Hieu', style: TextStyle(fontSize: 16)),
                const Text(
                  '@vohieuqwerty',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ))),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                  itemCount: listview.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex=index;
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 30, bottom: 30),
                        child: Row(
                          children: [
                            Icon(
                              listview[index].icon,
                              color: Colors.brown,
                            ),
                            const SizedBox(width: 20),
                            Text(
                              listview[index].content,
                              style: const TextStyle(color: Colors.brown),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          navBar(Icons.home_outlined,'Home'),
          navBar(Icons.slideshow,'Slid'),
          navBar(Icons.shopping_bag_outlined,'Shop'),
          navBar(Icons.favorite_border,'Favo'),
          navBar(Icons.person,'Per')
        ],
      ),
    );
  }
}

navBar(IconData icon, String label) {
  return
      BottomNavigationBarItem(
          icon: Icon(icon),
        label: label,
        backgroundColor: Colors.green,
      );
}
