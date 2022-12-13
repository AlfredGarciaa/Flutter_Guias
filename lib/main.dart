import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const one(),
    const two(),
    const three(),
    const four(),
    const five(),
    const six(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          iconSize: 25.0,
          selectedFontSize: 22.0,
          unselectedFontSize: 17.0,
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(1.0),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.one_k), label: ('Practica 1')),
            BottomNavigationBarItem(
                icon: Icon(Icons.two_k), label: ('Practica 2')),
            BottomNavigationBarItem(
                icon: Icon(Icons.three_k), label: ('Practica 3')),
            BottomNavigationBarItem(
                icon: Icon(Icons.four_k), label: ('Practica 4')),
            BottomNavigationBarItem(
                icon: Icon(Icons.five_k), label: ('Practica 5')),
            BottomNavigationBarItem(
                icon: Icon(Icons.six_k), label: ('Practica 6')),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// Vista de Practica #1 \\
class one extends StatelessWidget {
  const one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Center(child: Text(
          'hey this is flutter, the new way for developing funny and easy hybrid mobile app',
          textDirection: TextDirection.ltr,),)
    );
  }
}

// Vista de Practica #2 \\
class two extends StatelessWidget {
  const two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row and Column'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text('Row with MainAxisAlignment center'),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo()
                ]),
            const Text('Row with MainAxisAlignment end'),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo()
                ]),
            const Text('Row with MainAxisAlignment space Around'),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo()
                ]),
            const Text('Row with MainAxisAlignment spaceBetween'),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo()
                ]),
            const Text('Row with MainAxisAlignment spaceEvenly'),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo()
                ]), const Text('Row with MainAxisAlignment start'),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo()
                ])
          ],
        ),
      ),
    );
  }
}

// Vista de Practica #3 \\
class three extends StatelessWidget {
  const three({Key? key}) : super(key: key);

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

// Vista de Practica #4 \\
class four extends StatelessWidget {
  const four({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const TempApp(),
    );
  }
}
class TempApp extends StatefulWidget {
  const TempApp({super.key});
  @override
  TempState createState() => TempState();
}
class TempState extends State<TempApp> {
  late double input;
  late double output;
  late bool fOrC;
  @override
  void initState() {
    super.initState();
    input = 0.0;
    output = 0.0;
    fOrC = true;
  }
  @override
  Widget build(BuildContext context) {
    TextField inputField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (str) {
        try {
          input = double.parse(str);
        } catch (e) {
          input = 0.0;
        }
      },
      decoration: InputDecoration(
        labelText:
        "Input a Value in ${fOrC == false ? "Fahrenheit" : "Celsius"}",
      ),
      textAlign: TextAlign.center,
    );

    AppBar appBar = AppBar(
      title: const Text("Temperature Calculator"),
    );

    Container tempSwitch = Container(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          const Text("F"),
          Radio<bool>(
              groupValue: fOrC,
              value: false,
              onChanged: (v) {
                setState(() {
                  fOrC = v!;
                });
              }),
          const Text("C"),
          Radio<bool>(
              groupValue: fOrC,
              value: true,
              onChanged: (v) {
                setState(() {
                  fOrC = v!;
                });
              }),
        ],
      ),
    );
    Container calcBtn = Container(
      child: ElevatedButton(
        child: const Text("Calculate"),
        onPressed: () {
          setState(() {
            fOrC == false
                ? output = (input - 32) * (5 / 9)
                : output = (input * 9 / 5) + 32;
          });
          AlertDialog dialog = AlertDialog(
            content: fOrC == false
                ? Text(
                "${input.toStringAsFixed(2)} F : ${output.toStringAsFixed(2)} C")
                : Text(
                "${input.toStringAsFixed(2)} C : ${output.toStringAsFixed(2)} F"),
          );
          //showDialog(context: context, builder: dialog);
        },
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            inputField,
            tempSwitch,
            calcBtn,
          ],
        ),
      ),
    );
  }
}

// Vista de Practica #5 \\
class five extends StatelessWidget {
  const five({Key? key}) : super(key: key);

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

// Vista de Practica #6 \\
class six extends StatelessWidget {
  const six({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
            appBar: AppBar(
                title: const Text('Alert in Flutter'),
                backgroundColor: Colors.deepOrange),
            body: Center(
                child: Column(children: [
                  const Text(
                    'Hello World Travel',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  const Text('Discover the World'),
                  Image.network(
                    'https://images.freeimages.com/images/large-previews/b2d/kiwi-fruit-macros-1313905.jpg',
                    height: 350,
                    fit: BoxFit.contain,
                  ),
                  ElevatedButton(
                    onPressed: () => showAlert(context),
                    child: const Text('Contactanos'),
                  )
                ]))));
  }
}

showAlert(BuildContext context) {
  showDialog(context: context, builder: (BuildContext context) {
    return AlertDialog(
      title: const Text('Contact Us'),
      content: const Text('Mail us at hello@world.com'),
      actions: <Widget>[ElevatedButton(onPressed: () => true, child: const Text('Close'))],
    );
  });
  }
