import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana ekran'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("Uygulama ana sayfası"),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
              child:
              const Padding(
                padding: EdgeInsets.only(top: 120),
                child: Text("Teknoloji"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teknoloji'),
      ),
      body: const Center(
          child: Text("Teknoloji içerikleri"),
        ),
      );
  }
}