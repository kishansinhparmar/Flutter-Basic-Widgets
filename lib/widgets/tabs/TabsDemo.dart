import 'package:flutter/material.dart';

class TabsDemo extends StatefulWidget {
  static final String routeName = "/tabsdemo";
  @override
  _TabsDemoState createState() => new _TabsDemoState();
}

class _TabsDemoState extends State<TabsDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      print("Tab swipe");
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
      appBar: AppBar(
        bottom: new TabBar(
          controller: _tabController,
          tabs: [
            new Tab(icon: new Icon(Icons.home)),
            new Tab(icon: new Icon(Icons.explore)),
            new Tab(icon: new Icon(Icons.more_horiz)),
          ],
        ),
        title: new Text('Tabs Demo'),
      ),
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
    );
  }
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
