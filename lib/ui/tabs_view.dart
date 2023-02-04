import 'package:flutter/material.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  State<TabsView> createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.account_balance, color: Colors.red),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.accessibility_rounded,
                      color: Colors.red,
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.settings, color: Colors.red),
                  )
                ]),
                Expanded(
                  child: TabBarView(children: [
                    Container(
                      color: Colors.cyan,
                      child: Center(
                        child: Text("Hello Tab 1"),
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: Center(
                        child: Text("Hello Tab 2"),
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: Center(
                        child: Text("Hello Tab 3"),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
