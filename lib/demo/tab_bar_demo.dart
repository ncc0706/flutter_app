import 'package:flutter/material.dart';
import 'package:flutter_app/demo/post_page.dart';

import 'list_view_demo.dart';

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  int _currentIndex = 1;

  void _onTabHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Tabbar'),
          actions: <Widget>[],
          bottom: TabBar(
            indicatorColor: Colors.black54, // 指示器颜色
            indicatorSize: TabBarIndicatorSize.label, // 默认是tab
            unselectedLabelColor: Colors.grey[600],
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.local_airport),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.directions_boat),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(
              Icons.directions_bike,
              color: Colors.grey,
              size: 128.0,
            ),
            Icon(
              Icons.directions_boat,
              color: Colors.grey,
              size: 128.0,
            )
          ],
        ),
        // endDrawer
        // drawer: Container(
        //     color: Colors.white,
        //     padding: EdgeInsets.all(8.0),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[Text('this is a text')],
        //     )
        //   ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // DrawerHeader(
              //   child: Text('Header'),
              //   decoration: BoxDecoration(color: Colors.grey),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text('flutter'),
                accountEmail: Text('niuyuxian@163.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://resources.ninghao.org/images/wanghao.jpg'),
                  // backgroundColor: Colors.pink,
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                      image: AssetImage('images/pexels-photo-68592.jpeg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.yellow[100].withOpacity(0.3),
                          BlendMode.hardLight)),
                ),
              ),
              ListTile(
                leading: Container(
                  // color: Colors.pink,
                  child: Icon(
                    Icons.message,
                    color: Colors.yellow,
                    size: 20,
                  ),
                ),
                title: Align(
                  child: Text(
                    'Message',
                  ),
                  alignment: Alignment(-1.4, 0),
                ),
                onTap: () => Navigator.pop(context),
                trailing: Icon(
                  Icons.arrow_right,
                  color: Colors.pink,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.red,
              ),
              ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.yellow,
                  size: 20,
                ),
                title: Align(
                  child: Text('Message'),
                  alignment: Alignment(-1.4, 0),
                ),
                onTap: () => Navigator.pop(context),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(
                height: 1,
                color: Colors.red,
              ),
              ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.yellow,
                  size: 20,
                ),
                title: Align(
                  child: Text('Message'),
                  alignment: Alignment(-1.4, 0),
                ),
                onTap: () => Navigator.pop(context),
                trailing: Icon(Icons.arrow_right),
              ),
              Divider(
                height: 1,
                color: Colors.red,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabHandler,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), title: Text('History')),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text('List')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('My')),
          ],
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.pink,
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
