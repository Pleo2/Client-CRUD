import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Scaffold app',
      home: MyHomePage(label: 'Scaffold home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String label;

  const MyHomePage({super.key, required this.label});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
          backgroundColor: Colors.black,
          tabBar: CupertinoTabBar(items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.store,
                    color: Colors.blue
                ),
                label: 'Store'),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.camera,
                    color: Colors.blue
                ),
                label: 'Camera')
          ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    child: Center(
                      child: Column(
                        children: [
                          Text('$index: Home'),
                        ],
                      ),
                    ),
                  );
                });
              case 1:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    child: Center(
                      child: Column(
                        children: [
                          Text('$index: Store'),
                        ],
                      ),
                    ),
                  );
                });
              case 2:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    child: Center(
                      child: Column(
                        children: [
                          Text('$index: Camera'),
                        ],
                      ),
                    ),
                  );
                });
              default:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    child: Center(
                      child: Column(
                        children: [
                          Text('$index: Home'),
                        ],
                      ),
                    ),
                  );
                });
            }
          }),
    );
  }
}
