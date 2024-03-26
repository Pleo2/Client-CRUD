import 'package:flutter/cupertino.dart';

// Cupertino App Home page
class MyHomePageCupertino extends StatefulWidget {
  final String label;

  const MyHomePageCupertino({super.key, required this.label});

  @override
  MyHomePageCupertinoState createState() => MyHomePageCupertinoState();
}
class MyHomePageCupertinoState extends State<MyHomePageCupertino> {
  @override
  Widget build(BuildContext context) => cupertino();

  Widget cupertino() => const CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(
      middle: Text('My Client CRUD'),
    ),
    child: Text('hello'),
  );
}