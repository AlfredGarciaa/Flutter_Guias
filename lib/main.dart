import 'package:flutter/material.dart';

main() => runApp(const TravelApp());

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

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