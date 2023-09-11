import 'package:dot_bottom_nav_bar/view/dot_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dot Bottom Nav Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Dot Bottom Nav Bar")),
      bottomNavigationBar: DotBottomNavBar(
          currentIndex: selectIndex,
          onTap: (value) {
            setState(() {
              selectIndex = value;
            });
          },
          items: [
            BottomNavItem(
                emptySvg: "assets/ic_empty_home.svg",
                fillSvg: "assets/ic_fill_home.svg",
                label: "Home"),
            BottomNavItem(
                emptySvg: "assets/ic_empty_home.svg",
                fillSvg: "assets/ic_fill_home.svg",
                label: "Explore"),
            BottomNavItem(
                emptySvg: "assets/ic_empty_home.svg",
                fillSvg: "assets/ic_fill_home.svg",
                label: "Setting"),
          ]),
    );
  }
}
