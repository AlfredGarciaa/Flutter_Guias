import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
