import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:client/material/material_HomeScreen.dart'; // MaterialApp();
import 'package:client/cupertino/cupertino_HomeScreen.dart'; // CupertinoApp()

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) =>
      Platform.isIOS ? cupertinoRoot() : materialRoot();
  Widget materialRoot() => MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.yellow,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Scaffold app',
        home: const MyHomePageMaterial(
          label: 'FastNotes',
        ),
      );
  Widget cupertinoRoot() => const CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(brightness: Brightness.dark),
        home: MyHomePageCupertino(
          label: 'Scaffold Home',
        ),
      );
}
