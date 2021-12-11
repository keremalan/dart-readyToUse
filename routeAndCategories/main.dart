import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'lügat',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/technology': (context) => const TechCategory(),
        '/design': (context) => const DesignCategory(),
        '/software': (context) => const SoftwareCategory(),
        '/ai': (context) => const AiCategory(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('lügat'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text("Uygulama ana sayfası"),
            Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/technology');
                    },
                    child:
                    const Padding(
                      padding: EdgeInsets.only(top: 120, right: 62),
                      child:
                      Text(
                        "Teknoloji",
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/design');
                    },
                    child:
                    const Padding(
                      padding: EdgeInsets.only(top: 120),
                      child:
                      Text(
                        "Tasarım",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/software');
                  },
                  child:
                  const Padding(
                    padding: EdgeInsets.only(top: 120, right: 60),
                    child:
                    Text(
                      "Yazılım",
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/ai');
                  },
                  child:
                  const Padding(
                    padding: EdgeInsets.only(top: 120),
                    child:
                    Text(
                      "Yapay Zeka",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TechCategory extends StatelessWidget {
  const TechCategory({Key? key}) : super(key: key);

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

class DesignCategory extends StatelessWidget {
  const DesignCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasarım'),
      ),
      body: const Center(
        child: Text("Tasarım içerikleri"),
      ),
    );
  }
}

class SoftwareCategory extends StatelessWidget {
  const SoftwareCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yazılım'),
      ),
      body: const Center(
        child: Text("Yazılım içerikleri"),
      ),
    );
  }
}

class AiCategory extends StatelessWidget {
  const AiCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yapay Zeka'),
      ),
      body: const Center(
        child: Text("Yapay Zeka içerikleri"),
      ),
    );
  }
}