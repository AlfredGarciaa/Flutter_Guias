import 'package:flutter/material.dart';

void main() => runApp(const ColumnImageApp());

class ColumnImageApp extends StatelessWidget {
  const ColumnImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myColor = Colors.blue[300];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Paisaje Flutter'),
          ),
          body: Column(children: [
            Image.network(
                'https://images.freeimages.com/images/large-previews/89a/one-tree-hill-1360813.jpg'),
            Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold  ),),
                    Text('Ex adipisicing esse sint ')
                  ],
                ),
                Container(child: Row(
                  children: const <Widget>[
                  Icon(Icons.star, color: Colors.red,), Text('41')
                  ],
                ))
          ]
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                    children: [
                      Icon(Icons.call, color: myColor,),
                      const Padding(padding: EdgeInsets.all(4)),
                      Text('Call', style: TextStyle(color: myColor))
                    ]
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.near_me, color: myColor),
                    const Padding(padding: EdgeInsets.all(4)),
                    Text('ROUTE', style: TextStyle(color: myColor),)
                  ],
                ),
                Column(
                    children: [
                      Icon(Icons.share, color: myColor),
                      const Padding(padding: EdgeInsets.all(4)),
                      Text('SHARE', style: TextStyle( color: myColor),)
                    ]
                )
              ]
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
              "Sunt sit et dolore laboris tempor officia est adipisicing nisi nisi. Ex excepteur incididunt officia mollit est labore. Proident amet cillum quis aliquip velit irure. Enim aliqua velit enim minim eu pariatur consectetur excepteur. Ea aute laboris velit eu cillum aliquip nisi exercitation ullamco nostrud in veniam. Est ex ut officia commodo dolor incididunt id reprehenderit consectetur fugiat amet do esse reprehenderit. Irure cillum nostrud quis culpa sunt in pariatur."),
        )
        ])),
    );
  }
}
