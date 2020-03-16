import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
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
            Icon(
              Icons.local_airport,
              color: Colors.grey,
              size: 128.0,
            ),
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
              DrawerHeader(
                child: Text('Header'),
                decoration: BoxDecoration(color: Colors.grey),
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
      ),
    );
  }
}

Widget listItem() {
  return Container();
}
