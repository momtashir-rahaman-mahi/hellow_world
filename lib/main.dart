import 'package:flutter/material.dart';
import 'package:two_project/new.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
       theme :ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.red)),
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override

  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen>
{ @override
  void initState() {
  yoyo();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mahi ---"),
      ),
    );
  }
}



