import 'package:flutter/material.dart';

class BottomTabDemo extends StatefulWidget {
  static final String routeName = "/bottomtabdemo";
  @override
  _BottomTabDemoState createState() => new _BottomTabDemoState();
}

class _BottomTabDemoState extends State<BottomTabDemo>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      print("Tab swipe");
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomTab Demo")),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          //Reuse single class
          TabClass(
              Icon(
                Icons.home,
                color: Colors.white,
                size: 112.0,
              ),
              Colors.redAccent),
          TabClass(
              Icon(
                Icons.explore,
                color: Colors.white,
                size: 112.0,
              ),
              Colors.blueAccent),
          TabClass(
              Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 112.0,
              ),
              Colors.greenAccent)
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          fixedColor: Theme.of(context).accentColor,
          items: _bottomTabs(),
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _tabController.index = index;
              print(
                  "Current tab change ${_tabController.previousIndex} -> ${_tabController.index}");
            });
          },
        ),
      ),
    );
  }
}

_bottomTabs() {
  List<BottomNavigationBarItem> list = new List<BottomNavigationBarItem>();
  list.add(new BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      title: Text(
        "HOME",
      )));
  list.add(new BottomNavigationBarItem(
      icon: Icon(
        Icons.explore,
      ),
      title: Text(
        "Explore",
      )));
  list.add(new BottomNavigationBarItem(
      icon: Icon(
        Icons.more_horiz,
      ),
      title: Text(
        "Setting",
      )));
  return list;
}

class TabClass extends StatelessWidget {
  final Icon icon;
  final Color myColor;
  TabClass(this.icon, this.myColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColor,
      child: Center(
        child: icon,
      ),
    );
  }
}
