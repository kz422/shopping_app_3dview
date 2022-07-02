import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:interactive_3dviewer/features/top/veiw.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: Colors.deepPurpleAccent,
        selectedIconColor: Colors.white,
        unselectedIconColor: Colors.white.withOpacity(0.6),
        items: [
          FloatingNavBarItem(
              iconData: Icons.home_outlined,
              page: const MyHomePage(),
              title: 'Home',
          ),
          FloatingNavBarItem(
              iconData: Icons.favorite,
              page:const MyHomePage(),
              title: 'Favorite',
          ),
          FloatingNavBarItem(
              iconData: Icons.shopping_cart,
              page: const MyHomePage(),
              title: 'Cart',
          ),
          FloatingNavBarItem(
              iconData: Icons.settings,
              page: const MyHomePage(),
              title: 'Settings',
          ),
        ],
        horizontalPadding: 10.0,
        hapticFeedback: true,
        showTitle: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text('HOME',
          style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: const TopView()
    );
  }
}
