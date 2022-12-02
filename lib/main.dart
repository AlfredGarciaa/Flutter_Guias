import 'package:flutter/material.dart';

void main() => runApp(const TablessWidget());

class TablessWidget extends StatelessWidget {
  const TablessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Tabs',
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Flutter Tabs'),
                  bottom: const TabBar(
                    tabs: <Widget>[
                      Tab(icon: Icon(Icons.directions_bike)),
                      Tab(icon: Icon(Icons.directions_boat)),
                      Tab(icon: Icon(Icons.directions_bus))
                    ],
                  )),
              body: const TabBarView(children: [
                Icon(Icons.directions_bike),
                Icon(Icons.directions_boat),
                Icon(Icons.directions_bus)
              ]),
            )));
  }
}
